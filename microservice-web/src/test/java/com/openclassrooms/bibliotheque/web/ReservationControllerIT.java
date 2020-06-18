package com.openclassrooms.bibliotheque.web;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageFiltre;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

@Slf4j
@WithMockUser(username = "admin", roles = {"USER", "ADMIN"})
@AutoConfigureMockMvc
@SpringBootTest
public class ReservationControllerIT {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void getReservationPage_withoutError() throws Exception {
        mockMvc.perform(get("/reservation")).andDo(print()).andExpect(status().isOk());
    }

    @Test
    public void getReservationPage_withError() throws Exception {
        mockMvc.perform(get("/reservation")).andDo(print()).andExpect(status().isOk());
    }

    @Test
    public void extendReservation() throws Exception {
        mockMvc.perform(get("/reservation/prolonger/{reservationId}", "1"))
                .andDo(print()).andExpect(status().isOk());
    }

   @Test
    public void annulerListeAttente() throws Exception {
        mockMvc.perform(get("/reservation/enattente/annuler")
                                .param("listeAttenteId", "1"))
                .andDo(print()).andExpect(status().isOk());
    }

}
