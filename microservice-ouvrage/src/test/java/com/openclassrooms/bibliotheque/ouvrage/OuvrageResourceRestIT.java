package com.openclassrooms.bibliotheque.ouvrage;

import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.Matchers.containsString;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.StockErrorException;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.transaction.annotation.Transactional;

@AutoConfigureMockMvc
@SpringBootTest
@Transactional // Each test should have a clean DB before start
public class OuvrageResourceRestIT {

    @Autowired
    private MockMvc          mockMvc;


    // ===== Reserver =====
    @Test
    public void removeOneOuvrageQuantityFromStock_OuvragePresentInStock() throws Exception {
        // Given An int of ouvrage in stock
        int ouvrageIdInStock = 1;

        // When performing request

        // Then expect true
        mockMvc.perform(
                MockMvcRequestBuilders.put("/ouvrage/reserver/{ouvrageId}", String.valueOf(ouvrageIdInStock)))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string("true"));
    }

    @Test
    public void removeOneOuvrageQuantityFromStock_OuvrageNotPresentInStock() throws Exception {
        // Given An int of ouvrage in stock
        int ouvrageIdInStock = 2;

        // When performing request

        // Then expect error throwed
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.put("/ouvrage/reserver/{ouvrageId}", String.valueOf(ouvrageIdInStock)))
                .andDo(print())
                .andExpect(status().isBadRequest())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(StockErrorException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("L'ouvrage n'est plus en stock ...");
    }

    @Test
    public void removeOneOuvrageQuantityFromStock_OuvrageNotExisting() throws Exception {
        // Given An int of ouvrage in stock
        int ouvrageIdInStock = 100;

        // When performing request

        // Then expect error throwed
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.put("/ouvrage/reserver/{ouvrageId}", String.valueOf(ouvrageIdInStock)))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(OuvrageNotFoundException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Ouvrage non trouvé ...");
    }

    // ===== Stock =====
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

        // Then expected answer -> 0 ouvrage in stock
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

        // Then expect error throwed
        MvcResult mvcResult = mockMvc.perform(
                MockMvcRequestBuilders.get("/ouvrage/info/nbrinstock").param("ouvrageId", String.valueOf(ouvrageIdInStock)))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(OuvrageNotFoundException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Ouvrage non trouvé ...");
    }

}
