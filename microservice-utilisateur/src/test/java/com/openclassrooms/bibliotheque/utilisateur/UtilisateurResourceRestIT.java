package com.openclassrooms.bibliotheque.utilisateur;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

@AutoConfigureMockMvc
// @AutoConfigureRestDocs
@SpringBootTest
@Transactional // Each test should have a clean DB before start
public class UtilisateurResourceRestIT {

    @Autowired
    private MockMvc mockMvc;

    // ==== get Utilisateur by id====
    @Test
    public void getUtilisateurById_ExistingId() throws Exception {

        // Given
        String utilisateurId = "1";

        // When
        // Then
        mockMvc.perform(get("/utilisateur").param("utilisateurId", utilisateurId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.utilisateurId").value(1))
                .andExpect(jsonPath("$.firstName").value("Bridie"))
                .andExpect(jsonPath("$.lastName").value("Beeble"));

    }

    @Test
    public void getUtilisateurById_NotExistingId() throws Exception {

        // Given
        String utilisateurId = "10";

        // When
        // Then
        MvcResult mvcResult = mockMvc.perform(get("/utilisateur").param("utilisateurId", utilisateurId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ResponseStatusException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("404 NOT_FOUND \"User not found\"");

    }

    // ==== Get Utilisateur by Email ====
    @Test
    public void getUtilisateurById_ExistingEmail() throws Exception {

        // Given
        String email = "browcliffe1@howstuffworks.com";

        // When
        // Then
        mockMvc.perform(get("/utilisateur/{email}", email))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.utilisateurId").value(2))
                .andExpect(jsonPath("$.firstName").value("Bernardine"))
                .andExpect(jsonPath("$.lastName").value("Rowcliffe"));

    }

    @Test
    public void getUtilisateurById_NotExistingEmail() throws Exception {

        // Given
        String email = "test@test.co";

        // When
        // Then
        MvcResult mvcResult = mockMvc.perform(get("/utilisateur/{email}", email))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(ResponseStatusException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("404 NOT_FOUND \"User not found\"");

    }
}
