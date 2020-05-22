package com.openclassrooms.bibliotheque.reservation;

import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.mock;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.openclassrooms.bibliotheque.reservation.dto.ListeAttenteDto;
import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import org.joda.time.DateTime;
import org.junit.Before;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.mockito.Mockito;
import org.mockito.exceptions.misusing.NullInsteadOfMockException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.restdocs.AutoConfigureRestDocs;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.test.web.servlet.MockMvc;
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

    @BeforeEach
    public void init() {
        Mockito.when(ouvrageProxySpy.getOuvrageById(anyInt()))
                .thenReturn(new OuvrageDto(1,"unit-test","",new DateTime().toDate(),"","",0,0,0));
    }

    // ===== Reservation =====
    @Test
    public void getReservationsByUtilisateurIdExistingUser() throws Exception {
        // Given an exising userId
        int userId = 1;

        // When
        // Then
        mockMvc.perform(get("/reservation/list/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].reservationId").value(1))
                .andExpect(jsonPath("$[0].ouvrageId").value(1))
                .andExpect(jsonPath("$[0].reservationDateDebut").value("2020-05-22"))
                .andExpect(jsonPath("$[0].reservationDateFin").value("2020-05-22"))
                .andExpect(jsonPath("$[0].dejaProlonge").value("false"))
                .andExpect(jsonPath("$[0].active").value("true"));
    }

    @Test
    public void getReservationsByUtilisateurIdNotExistingUser() throws Exception {
        // Given an exising userId
        int userId = 100;

        // When
        // Then should return ok without error cause we dont look if user exist
        mockMvc.perform(get("/reservation/list/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk());
    }

    // ===== Liste attente =====
    @Test
    public void getListeAttenteByUtilisateurIdExistingUser() throws Exception {
        // Given an exising userId
        int userId = 1;

        // When
        // Then should return ok without error cause we dont look if user exist
        mockMvc.perform(get("/reservation/listeattente/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk());

    }

    @Test
    public void getListeAttenteByUtilisateurIdNotExistingUser() throws Exception {
        // Given an exising userId
        int userId = 100;

        // When
        // Then should return ok without error cause we dont look if user exist
        mockMvc.perform(get("/reservation/listeattente/{utilisateurId}", userId))
                .andDo(print())
                .andExpect(status().isOk());

    }
}
