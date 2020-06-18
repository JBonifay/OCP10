package com.openclassrooms.bibliotheque.web;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import com.openclassrooms.bibliotheque.web.config.SecurityConfig;
import com.openclassrooms.bibliotheque.web.config.security.JwtAuthInterceptor;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import java.util.Date;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;

@Slf4j
@WithMockUser(username = "admin", roles = {"USER", "ADMIN"})
@AutoConfigureMockMvc
@SpringBootTest
public class DescriptionControllerIT {

    public final OuvrageDescriptionDto ouvrageDescriptionDto = new OuvrageDescriptionDto();
    @Autowired
    private MockMvc mockMvc;
    @MockBean
    private JwtAuthInterceptor jwtAuthInterceptor;
    @MockBean
    private OuvrageProxy       ouvrageProxy;

    @BeforeEach
    public void init() {
        doNothing().when(jwtAuthInterceptor).apply(any());

        ouvrageDescriptionDto.setOuvrageId(1);
        ouvrageDescriptionDto.setName("Test name");
        ouvrageDescriptionDto.setAuthor("Test author");
        ouvrageDescriptionDto.setReleaseDate(new Date());
        ouvrageDescriptionDto.setSummary("Test test test test test test test test test test test test test test test test test");
        ouvrageDescriptionDto.setEditor("Test editor");
        ouvrageDescriptionDto.setNumberOfPages(300);
        ouvrageDescriptionDto.setNotation(4);
        ouvrageDescriptionDto.setQuantity(3);

        when(ouvrageProxy.getOuvrageDescriptionById(anyInt())).thenReturn(ouvrageDescriptionDto);
    }


    @Test
    public void getOuvrageDescriptionPageTest() throws Exception {
        mockMvc.perform(get("/ouvrage/description").param("id", "1"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name("description"))
                .andExpect(model().attribute("ouvrage", ouvrageDescriptionDto));
    }

    @Test
    public void createReservation() throws Exception {
        mockMvc.perform(get("/reservation/creer").param("ouvrage_id", "1")).andDo(print()).andExpect(status().isOk());
    }

    @Test
    public void createListeAttenteForUser() throws Exception {
        mockMvc.perform(get("/reservation/listeattente/creer").param("ouvrage_id", "1"))
                .andDo(print())
                .andExpect(status().isOk());
    }

}
