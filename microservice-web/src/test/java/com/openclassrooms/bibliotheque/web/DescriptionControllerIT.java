package com.openclassrooms.bibliotheque.web;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import com.openclassrooms.bibliotheque.web.config.security.JwtAuthInterceptor;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import java.util.Date;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

@WithMockUser(roles = "ADMIN")
@AutoConfigureMockMvc
@SpringBootTest
public class DescriptionControllerIT {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private JwtAuthInterceptor jwtAuthInterceptor;

    @MockBean
    private OuvrageProxy ouvrageProxy;


    public static final OuvrageDescriptionDto OUVRAGE_DESCRIPTION_DTO = new OuvrageDescriptionDto();

    @BeforeEach
    public void init() {
        Mockito.doNothing().when(jwtAuthInterceptor).apply(any());

        OUVRAGE_DESCRIPTION_DTO.setOuvrageId(1);
        OUVRAGE_DESCRIPTION_DTO.setName("Test name");
        OUVRAGE_DESCRIPTION_DTO.setAuthor("Test author");
        OUVRAGE_DESCRIPTION_DTO.setReleaseDate(new Date());
        OUVRAGE_DESCRIPTION_DTO.setSummary("Test test test test test test test test test test test test test test test test test");
        OUVRAGE_DESCRIPTION_DTO.setEditor("Test editor");
        OUVRAGE_DESCRIPTION_DTO.setNumberOfPages(300);
        OUVRAGE_DESCRIPTION_DTO.setNotation(4);
        OUVRAGE_DESCRIPTION_DTO.setQuantity(3);

        Mockito.when(ouvrageProxy.getOuvrageDescriptionById(anyInt())).thenReturn(OUVRAGE_DESCRIPTION_DTO);
    }


    @Test
    public void getOuvrageDescriptionPageTest() throws Exception {
        mockMvc.perform(get("/ouvrage/description").param("id", "1"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name("description"))
                .andExpect(model().attribute("ouvrage",OUVRAGE_DESCRIPTION_DTO));
    }


















}
