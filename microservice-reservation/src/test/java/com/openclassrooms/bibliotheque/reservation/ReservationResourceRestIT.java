package com.openclassrooms.bibliotheque.reservation;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.anyString;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.reservation.error.ListeAttenteException;
import com.openclassrooms.bibliotheque.reservation.error.ReservationException;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.service.mail.MailService;
import javax.mail.internet.MimeMessage;
import org.joda.time.DateTime;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.transaction.annotation.Transactional;

@AutoConfigureMockMvc
// @AutoConfigureRestDocs
@SpringBootTest
@Transactional // Each test should have a clean DB before start
public class ReservationResourceRestIT {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private OuvrageProxy ouvrageProxySpy;

    @MockBean
    private UtilisateurProxy utilisateurProxy;

    @MockBean
    private MailService mailService;

    @BeforeEach
    public void init() {
        Mockito.doNothing().when(mailService).sendSimpleMessage(anyString(), anyString(), anyString());

        Mockito
                .when(ouvrageProxySpy.getOuvrageById(anyInt()))
                .thenReturn(new OuvrageDto(1, "test", "", new DateTime().toDate(), "", "", 0, 0, 1));

        Mockito
                .when(utilisateurProxy.findUtilisateurById(anyString()))
                .thenReturn(new UtilisateurDto(1, "test", "test", "test@test.co", "test"));
    }

    // ===== Reservation =====
    @Test
    public void getReservationsByUtilisateurIdExistingUser() throws Exception {
        // Given
        int userId = 1;

        // When
        // Then
        mockMvc
                .perform(get("/reservation/list/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].reservationId").value(1))
                .andExpect(jsonPath("$[0].ouvrageId").value(1))
                .andExpect(jsonPath("$[0].reservationDateDebut").value("2020-05-01"))
                .andExpect(jsonPath("$[0].reservationDateFin").value("2020-05-30"))
                .andExpect(jsonPath("$[0].dejaProlonge").value("false"))
                .andExpect(jsonPath("$[0].active").value("true"));
    }

    @Test
    public void getReservationsByUtilisateurIdNotExistingUser() throws Exception {
        // Given
        int userId = 100;

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/list/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        // Then
        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("[]");
    }

    // ===== Liste attente =====
    @Test
    public void getListeAttenteByUtilisateurIdExistingUser() throws Exception {
        // Given
        int userId = 1;

        // When
        mockMvc
                .perform(get("/reservation/listeattente/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].listeAttenteId").value(1));
    }

    @Test
    public void getListeAttenteByUtilisateurIdNotExistingUser() throws Exception {
        // Given
        int userId = 100;

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        // Then
        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("[]");
    }

    @Test
    public void annulerListeAttenteExistingListeAttenteId() throws Exception {
        // Given
        String listeAttenteId = "1";

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/annuler").param("listeAttenteId", listeAttenteId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        // Then
        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("Reservation annulée");
    }

    @Test
    public void annulerListeAttenteNotExistingListeAttenteId() throws Exception {
        // Given an exising listeAttenteId
        String listeAttenteId = "100";

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/annuler").param("listeAttenteId", listeAttenteId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();
        // Then
        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ListeAttenteException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Liste attente non trouvé.");

    }

    @Test
    public void getNextReturnDateForOuvrageIdExisting() throws Exception {
        // Given an exising ouvrageId
        String ouvrageId = "1";

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/info/nextreturndate").param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        // Then
        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("\"2020-05-29T22:00:00.000+0000\"");
    }

    @Test
    public void getNextReturnDateForOuvrageIdNotExisting() throws Exception {
        // Given not exising ouvrageId
        String ouvrageId = "100";

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/info/nextreturndate").param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        // Then
        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Aucune reservation en cours pour cet ouvrage.");
    }

    @Test
    public void getNumberOfUserWaitingForOuvrageIdExisting() throws Exception {
        // Given an exising ouvrageId
        String ouvrageId = "1";

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/info/numberofuserwaiting").param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        // Then
        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("2");
    }

    @Test
    public void getNumberOfUserWaitingForOuvrageIdNotExisting() throws Exception {
        // Given not exising ouvrageId
        String ouvrageId = "1";

        // When
        // Then
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/info/numberofuserwaiting").param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("2");

    }

    @Test
    public void getNumberOfActiveReservationForOuvrageIdExisting() throws Exception {
        // Given an exising ouvrageId
        String ouvrageId = "1";

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/info/numberofactivereservation").param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        // Then
        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("1");
    }

    @Test
    public void getNumberOfActiveReservationForOuvrageIdNotExisting() throws Exception {
        // Given not exising ouvrageId
        String ouvrageId = "100";

        // When
        MvcResult mvcResult = mockMvc
                .perform(get("/reservation/listeattente/info/numberofactivereservation").param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        // Then
        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Réservation non trouvée.");
    }

    // ==== Extend Reservation ====

    @Test
    public void extendReservationExistingId() throws Exception {
        // Given an exising reservationId
        String reservationId = "5";

        // When
        MvcResult mvcResult = mockMvc
                .perform(put("/reservation/prolonger/{reservationId}", reservationId))
                .andDo(print())
                .andExpect(status().isOk())
                .andReturn();

        assertThat(mvcResult.getResponse().getContentAsString()).isEqualTo("Prolongement effectué..");
    }

    @Test
    public void extendReservationExistingId_ReservationDateReturnTooClose() throws Exception {
        // Given an exising reservationId
        String reservationId = "1";

        // When
        MvcResult mvcResult = mockMvc
                .perform(put("/reservation/prolonger/{reservationId}", reservationId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        // Then
        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("La date de retour est dépassée.");
    }

    @Test
    public void extendReservationNotExistingId() throws Exception {
        // Given not exising reservationId
        String reservationId = "100";

        // When
        MvcResult mvcResult = mockMvc
                .perform(put("/reservation/prolonger/{reservationId}", reservationId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        // Then
        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Réservation non trouvée.");
    }

    @Test
    public void extendReservationExistingId_AlreadyExtended() throws Exception {
        // Given an exising reservationId
        String reservationId = "2";

        // When
        MvcResult mvcResult = mockMvc
                .perform(put("/reservation/prolonger/{reservationId}", reservationId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        // Then
        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("La réservation à déjà été prolongée");
    }

    // ==== Create Reservation ====

    @Test
    public void createReservationExistingId() throws Exception {
        // Given
        String utilisateurId = "1";
        String ouvrageId = "2";

        // When
        mockMvc
                .perform(post("/reservation/creer").param("utilisateurId", utilisateurId).param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.reservationId").value(6))
                .andExpect(jsonPath("$.utilisateurId").value(1))
                .andExpect(jsonPath("$.ouvrageId").value(2));
    }

    @Test
    public void createReservationEmptyStock() throws Exception {
        Mockito.when(ouvrageProxySpy.removeOneStockItem(anyInt())).thenThrow(new ReservationException());

        // Given
        String utilisateurId = "1";
        String ouvrageId = "2";

        // When
        MvcResult mvcResult = mockMvc
                .perform(post("/reservation/creer").param("utilisateurId", utilisateurId).param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("L'ouvrage n'est plus en stock !");
    }

    @Test
    public void createReservation_AlreadyInUserReservationList() throws Exception {
        // Given
        String utilisateurId = "1";
        String ouvrageId = "1";

        // When
        MvcResult mvcResult = mockMvc
                .perform(post("/reservation/creer").param("utilisateurId", utilisateurId).param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo(
                "La réservation est déjà présente dans la liste de reservations de l'utilisateur.");
    }

    @Test
    public void createReservation_AlreadyInUserListeAttenteList() throws Exception {
        // Given
        String ouvrageId = "2";
        String utilisateurId = "4";

        // When
        MvcResult mvcResult = mockMvc
                .perform(post("/reservation/creer").param("utilisateurId", utilisateurId).param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo(
                "La réservation est déjà présente dans la liste d'attente de l'utilisateur.");
    }

    // ==== Create Liste Attente ====

    @Test
    public void createListeAttente() throws Exception {
        Mockito.when(ouvrageProxySpy.getNbrInStock(anyInt())).thenReturn(10);

        String utilisateurId = "1";
        String ouvrageId = "2";

        mockMvc
                .perform(post("/reservation/listeattente/creer")
                                 .param("utilisateurId", utilisateurId)
                                 .param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.utilisateurId").value(1))
                .andExpect(jsonPath("$.ouvrageId").value(2));
    }

    @Test
    public void createListeAttenteEmptyStock() throws Exception {
        Mockito.when(ouvrageProxySpy.getNbrInStock(anyInt())).thenReturn(0);

        String utilisateurId = "1";
        String ouvrageId = "2";

        MvcResult mvcResult = mockMvc
                .perform(post("/reservation/listeattente/creer")
                                 .param("utilisateurId", utilisateurId)
                                 .param("ouvrageId", ouvrageId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("La liste d'attente est pleine.");
    }

    @Test
    public void returnReservation() throws Exception {
        // TODO: 29/05/2020 Mock MailService

        String reservationId = "1";

        mockMvc
                .perform(put("/reservation/retourner/{reservationId}", reservationId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.reservationId").value(1))
                .andExpect(jsonPath("$.ouvrageId").value(1))
                .andExpect(jsonPath("$.active").value(false))
                .andExpect(jsonPath("$.dejaProlonge").value(false));

    }

    @Test
    public void returnReservation_alreadyReturned() throws Exception {
        // TODO: 29/05/2020 Mock MailService

        String reservationId = "4";

        MvcResult mvcResult = mockMvc
                .perform(put("/reservation/retourner/{reservationId}", reservationId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ReservationException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("La réservation à déjà était retournée");

    }

}
