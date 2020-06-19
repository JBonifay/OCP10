package com.openclassrooms.bibliotheque.web;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.google.gson.Gson;
import com.openclassrooms.bibliotheque.web.config.WithMockCustomUser;
import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageFiltre;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageStockDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

@Slf4j
@WithMockCustomUser
@AutoConfigureMockMvc
@SpringBootTest
public class RechercheControllerIT {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private OuvrageProxy ouvrageProxy;

    @BeforeEach
    public void init() {
        Mockito.when(ouvrageProxy.getAllOuvrageListByPage(any())).thenReturn(new RestPageImpl<OuvrageStockDto>());
    }

    @Test
    public void getOuvragesPage() throws Exception {
        MvcResult mvcResult = mockMvc.perform(get("/listedesouvrages")).andDo(print()).andExpect(status().isOk()).andReturn();

        assertThat(mvcResult.getModelAndView().getModel().get("ouvrageFiltre")).isEqualTo(new OuvrageFiltre());
    }

    @Test
    public void applyFilter() throws Exception {
        OuvrageFiltre ouvrageFiltre = new OuvrageFiltre("name", "author", "editor", 1, 2, 3);

        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.post("/listedesouvrages")
                                                                    .contentType(MediaType.APPLICATION_JSON)
                                                                    .content(new Gson().toJson(ouvrageFiltre)))
                                     .andDo(print()).andExpect(status().isOk()).andReturn();

        assertThat(mvcResult.getModelAndView().getModel().get("ouvrageFiltre")).isEqualTo(ouvrageFiltre);
    }

}
