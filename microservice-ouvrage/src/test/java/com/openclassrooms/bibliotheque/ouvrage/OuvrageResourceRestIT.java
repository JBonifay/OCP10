package com.openclassrooms.bibliotheque.ouvrage;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@AutoConfigureMockMvc
@SpringBootTest
public class OuvrageResourceRestIT {

    @Autowired
    private MockMvc          mockMvc;

    @Test
    public void getNbrInStock_OuvragePresentInStock() throws Exception {
        // Given An int of ouvrage in stock
        int ouvrageIdInStock = 1;

        // When performing request

        // Then
        mockMvc.perform(
                MockMvcRequestBuilders.get("/ouvrage/info/nbrinstock").param("ouvrageId", String.valueOf(ouvrageIdInStock)))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(MockMvcResultMatchers.content().string(containsString("2")));

    }

    @Test
    public void getNbrInStock_OuvrageNotPresentInStock() throws Exception {
        // Given An int of ouvrage in stock
        int ouvrageIdInStock = 2;

        // When performing request

        // Then
        mockMvc.perform(
                MockMvcRequestBuilders.get("/ouvrage/info/nbrinstock").param("ouvrageId", String.valueOf(ouvrageIdInStock)))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(MockMvcResultMatchers.content().string(containsString("0")));

    }

    @Test
    public void getNbrInStock_OuvrageNotExisting() throws Exception {
        // Given An int of ouvrage in stock
        int ouvrageIdInStock = 100;

        // When performing request

        // Then
        mockMvc.perform(
                MockMvcRequestBuilders.get("/ouvrage/info/nbrinstock").param("ouvrageId", String.valueOf(ouvrageIdInStock)))
                .andDo(print())
                .andExpect(status().isNotFound());
    }

}
