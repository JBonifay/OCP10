package com.openclassrooms.bibliotheque.ouvrage;

import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.Matchers.containsString;
import static org.springframework.http.MediaType.APPLICATION_JSON;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.google.gson.Gson;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageRechercheWrapper;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.StockErrorException;
import java.util.Arrays;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.transaction.annotation.Transactional;

@AutoConfigureMockMvc
@SpringBootTest
@Transactional // Each test should have a clean DB before start
public class OuvrageResourceRestIT {

    @Autowired
    private MockMvc          mockMvc;

    // ===== Recherche  =====
    @Test
    public void getAllOuvrageListe_PageOne() throws Exception {
        // Given object for filtering
        OuvrageRechercheWrapper ouvrageRechercheWrapper = new OuvrageRechercheWrapper(0, 5, "", "", "", 0, 0, 0);

        // When
        // Then expecting page of 5 elements
        mockMvc.perform(post("/ouvrage/recherche")
                .contentType(APPLICATION_JSON)
                .content(new Gson().toJson(ouvrageRechercheWrapper)))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.numberOfElements").value(5));
    }

    @Test
    public void getAllOuvrageListe_PageEmpty() throws Exception {
        // Given object for filtering
        OuvrageRechercheWrapper ouvrageRechercheWrapper = new OuvrageRechercheWrapper(10, 5, "", "", "", 0, 0, 0);

        // When
        // Then expecting page of 5 elements
        mockMvc.perform(
                post("/ouvrage/recherche")
                        .contentType(APPLICATION_JSON)
                        .content(new Gson().toJson(ouvrageRechercheWrapper)))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.numberOfElements").value(0));
    }

    // ===== Get all ouvrage  =====
    @Test
    public void getDescriptionByOuvrageId_ExistingOuvrage() throws Exception {
        // Given int id of existing Ouvrage
        int ouvrageId = 1;

        // When
        mockMvc.perform(get("/ouvrage/description/{ouvrageId}", ouvrageId))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.ouvrageId").value(1))
                .andExpect(jsonPath("$.name").value("Acid House, The"))
                .andExpect(jsonPath("$.author").value("Geneva Wetherby"));
    }

    @Test
    public void getDescriptionByOuvrageId_NotExistingOuvrage() throws Exception {
        // Given int id of existing Ouvrage
        int ouvrageId = 100;

        // When
        MvcResult mvcResult = mockMvc.perform(get("/ouvrage/description/{ouvrageId}", ouvrageId))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(OuvrageNotFoundException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Ouvrage non trouvé ...");

    }

    // ===== Get all ouvrage  =====
    @Test
    public void getAllOuvrageByOuvrageIdList_ValidList() throws Exception {
        // Given a list of Ouvrage id
        List<Integer> ouvrageIdList = Arrays.asList(1,2,3);

        // When performing request
        // Then
        mockMvc.perform(post("/ouvrage/list")
                .contentType(APPLICATION_JSON)
                .content(new Gson().toJson(ouvrageIdList)))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].ouvrageId").value(1))
                .andExpect(jsonPath("$[1].name").value("Life of Oharu, The (Saikaku ichidai onna)"))
                .andExpect(jsonPath("$[2].author").value("Maxie Dominichelli"))
                .andReturn();
    }

    @Test
    public void getAllOuvrageByOuvrageIdList_InvalidList() throws Exception {
        // Given a list of Ouvrage id
        List<Integer> ouvrageIdList = Arrays.asList(1, 2, 103);

        // When performing request
        // Then
        MvcResult mvcResult = mockMvc.perform(post("/ouvrage/list").contentType(APPLICATION_JSON).content(new Gson().toJson(ouvrageIdList)))
                .andDo(print())
                .andExpect(status().isNotFound())
                .andReturn();

        assertThat(mvcResult.getResolvedException().getClass()).isEqualTo(OuvrageNotFoundException.class);
        assertThat(mvcResult.getResolvedException().getMessage()).isEqualTo("Ouvrage non trouvé ...");
    }

    // ===== Reserver =====
    @Test
    public void removeOneOuvrageQuantityFromStock_OuvragePresentInStock() throws Exception {
        // Given An int of ouvrage in stock
        int ouvrageIdInStock = 1;

        // When performing request
        // Then
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
