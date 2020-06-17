package com.openclassrooms.bibliotheque.zuulserver;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.anyString;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.openclassrooms.bibliotheque.zuulserver.config.jwt.JwtToken;
import com.openclassrooms.bibliotheque.zuulserver.config.jwt.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.zuulserver.proxies.UtilisateurProxy;
import java.util.Map;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.bind.annotation.RequestParam;

@AutoConfigureMockMvc
// @AutoConfigureRestDocs
@SpringBootTest
public class JwtTokenTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private JwtToken jwtToken;

    @MockBean
    private UtilisateurProxy utilisateurProxy;

    public UtilisateurDto utilisateurDto = new UtilisateurDto();

    @BeforeEach
    public void init() {
        utilisateurDto.setUtilisateurId(1);
        utilisateurDto.setEmail("bbeeble0@instagram.com");
        utilisateurDto.setFirstName("Bridie");
        utilisateurDto.setLastName("Beeble");
        utilisateurDto.setPassword("$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK");
        utilisateurDto.setJwtToken("");

        Mockito.when(utilisateurProxy.findUtilisateurByEmailIgnoreCase(anyString())).thenReturn(utilisateurDto);
    }

    @Test
    public void shouldReturnUnauthorized() throws Exception {

        mockMvc.perform(get("/"))
                .andDo(print())
                .andExpect(status().isForbidden());

    }

    @Test
    public void shouldGenerateAuthToken() throws Exception {

        String token = "Bearer " + jwtToken.generateToken(utilisateurDto);
        utilisateurDto.setJwtToken(token);


        assertThat(token).isNotNull();
        mockMvc.perform(get("/jwt/token/validate").header("Authorization", token))
                .andExpect(status().isOk());
    }

    @Test
    public void shouldAuthenticateUser() throws Exception {
        mockMvc.perform(post("/authenticate")
                                .param("username", utilisateurDto.getEmail())
                                .param("password", utilisateurDto.getPassword()))
                .andExpect(status().isOk());
    }

}
