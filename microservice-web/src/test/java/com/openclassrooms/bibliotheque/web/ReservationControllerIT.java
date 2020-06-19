package com.openclassrooms.bibliotheque.web;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.openclassrooms.bibliotheque.web.config.WithMockCustomUser;
import com.openclassrooms.bibliotheque.web.dto.listeattente.ListeAttenteDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageIdNameDto;
import com.openclassrooms.bibliotheque.web.dto.reservation.ReservationDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import java.sql.Date;
import java.util.Collections;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

@Slf4j
@WithMockCustomUser
@AutoConfigureMockMvc
@SpringBootTest
public class ReservationControllerIT {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private ReservationProxy reservationProxy;
    @MockBean
    private OuvrageProxy     ouvrageProxy;

    @BeforeEach
    public void init() {
        when(reservationProxy.getAllReservationListByUtilisateurId(anyInt())).thenReturn(Collections.singletonList(new ReservationDto(
                1,
                1,
                new Date(System.currentTimeMillis()),
                new Date(System.currentTimeMillis()),
                true,
                true)));

        when(ouvrageProxy.getAllOuvrageByOuvrageIdList(any())).thenReturn(Collections.singletonList(new OuvrageIdNameDto(1,
                                                                                                                         "name",
                                                                                                                         "author",
                                                                                                                         "5")));

        when(reservationProxy.getAllReservationEnAttenteListByUtilisateurId(anyInt())).thenReturn(Collections.singletonList(new ListeAttenteDto(
                1,
                1,
                "name",
                1,
                new Date(System.currentTimeMillis()))));

    }

    @Test
    public void getReservationPage() throws Exception {
        mockMvc.perform(get("/reservation")).andDo(print()).andExpect(status().isOk());
    }

    @Test
    public void extendReservation() throws Exception {
        mockMvc.perform(get("/reservation/prolonger/{reservationId}", "1"))
               .andDo(print())
               .andExpect(redirectedUrl("/reservation"));
    }

    @Test
    public void annulerListeAttente() throws Exception {
        mockMvc.perform(get("/reservation/enattente/annuler").param("listeAttenteId", "1"))
               .andDo(print())
               .andExpect(redirectedUrl("/reservation"));
    }

}
