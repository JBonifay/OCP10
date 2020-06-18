package com.openclassrooms.bibliotheque.reservation;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.when;

import com.openclassrooms.bibliotheque.reservation.batch.ListeAttenteBatch;
import com.openclassrooms.bibliotheque.reservation.dto.ListeAttenteDto;
import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import com.openclassrooms.bibliotheque.reservation.service.mail.MailService;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.transaction.annotation.Transactional;

@AutoConfigureMockMvc
// @AutoConfigureRestDocs
@SpringBootTest
@Transactional // Each test should have a clean DB before start
public class ListeAttenteBatchIT {

    @Autowired
    private ListeAttenteBatch listeAttenteBatch;

    @SpyBean
    private ReservationService reservationService;
    @MockBean
    private UtilisateurProxy   utilisateurProxy;
    @MockBean
    private OuvrageProxy       ouvrageProxy;
    @MockBean
    private MailService        mailService;

    private ListeAttente listeAttente2;
    private ListeAttente listeAttente1;

    @BeforeEach
    public void init() throws ParseException {
        doNothing().when(mailService).sendSimpleMessage(anyString(), anyString(), anyString());
        when(utilisateurProxy.findUtilisateurById(anyString())).thenReturn(new UtilisateurDto());
        when(ouvrageProxy.getOuvrageById(anyInt())).thenReturn(new OuvrageDto());

        Timestamp timestamp = new Timestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-06-01 00:00:00.0").getTime());

        listeAttente1 = new ListeAttente();
        listeAttente1.setListeAttenteId(1);
        listeAttente1.setUtilisateurId(1);
        listeAttente1.setOuvrageId(1);
        listeAttente1.setPositionFileAttente(1);
        listeAttente1.setNotificationSent(true);
        listeAttente1.setNotificationTimestamp(timestamp);

        listeAttente2 = new ListeAttente();
        listeAttente2.setListeAttenteId(4);
        listeAttente2.setUtilisateurId(4);
        listeAttente2.setOuvrageId(2);
        listeAttente2.setPositionFileAttente(1);
        listeAttente2.setNotificationSent(true);
        listeAttente2.setNotificationTimestamp(timestamp);
    }

    @Test
    public void executeTest() {
        // We test here the content of the method
        Optional<List<ListeAttente>> optionalListeAttenteList = reservationService.getAllByNotificationSentIsTrue();

        assertThat(optionalListeAttenteList.get()).isNotEmpty();
        assertThat(optionalListeAttenteList.get()).containsExactly(listeAttente1, listeAttente2);

        // Assert no error thrown
        listeAttenteBatch.execute();

        // Now we check that the two listeAttente have been removed and a new one is activated for each ouvrage (Notification sent = true)
        Optional<List<ListeAttente>> optionalListeAttenteListAfterTest = reservationService.getAllByNotificationSentIsTrue();
        assertThat(optionalListeAttenteListAfterTest).isNotEmpty();

        // OuvrageId = 1
        assertThat(optionalListeAttenteListAfterTest.get().get(0).getListeAttenteId()).isEqualTo(2);
        assertThat(optionalListeAttenteListAfterTest.get().get(0).getUtilisateurId()).isEqualTo(2);
        assertThat(optionalListeAttenteListAfterTest.get().get(0).getOuvrageId()).isEqualTo(1);
        assertThat(optionalListeAttenteListAfterTest.get().get(0).getPositionFileAttente()).isEqualTo(1);
        assertThat(optionalListeAttenteListAfterTest.get().get(0).isNotificationSent()).isEqualTo(true);

        // OuvrageId = 2
        assertThat(optionalListeAttenteListAfterTest.get().get(1).getListeAttenteId()).isEqualTo(5);
        assertThat(optionalListeAttenteListAfterTest.get().get(1).getUtilisateurId()).isEqualTo(5);
        assertThat(optionalListeAttenteListAfterTest.get().get(1).getOuvrageId()).isEqualTo(2);
        assertThat(optionalListeAttenteListAfterTest.get().get(1).getPositionFileAttente()).isEqualTo(1);
        assertThat(optionalListeAttenteListAfterTest.get().get(1).isNotificationSent()).isEqualTo(true);
    }


}
