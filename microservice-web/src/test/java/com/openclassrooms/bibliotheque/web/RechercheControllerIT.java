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
public class RechercheControllerIT {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void getOuvragesPage() throws Exception {
        mockMvc.perform(get("/listedesouvrages")).andDo(print()).andExpect(status().isOk());
    }

    @Test
    public void applyFilter() throws Exception {
        Pageable pageable = null;
        OuvrageFiltre ouvrageFiltre = null;

        mockMvc.perform(post("/listedesouvrages", pageable,ouvrageFiltre))
                .andDo(print()).andExpect(status().isOk());
    }

}
