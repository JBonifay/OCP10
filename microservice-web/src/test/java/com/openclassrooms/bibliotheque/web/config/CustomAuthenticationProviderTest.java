package com.openclassrooms.bibliotheque.web.config;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;
import static org.mockito.ArgumentMatchers.anyString;

import com.openclassrooms.bibliotheque.web.config.security.CustomAuthenticationProvider;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import feign.FeignException;
import java.util.ArrayList;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;

@SpringBootTest
public class CustomAuthenticationProviderTest {

    private static final UtilisateurDto               AUTHENTICATED_UTILISATEUR = new UtilisateurDto(1, "firstname", "lastname",
                                                                                                     "test@test.co", "password",
                                                                                                     true, "username",
                                                                                                     new ArrayList<>(), true,
                                                                                                     true, true, "");
    @Autowired
    private              CustomAuthenticationProvider customAuthenticationProvider;
    @MockBean
    private              UtilisateurProxy             utilisateurProxy;

    @Test
    public void testAuthenticationBadUser() {

        Mockito.when(utilisateurProxy.authenticateUser(anyString(), anyString())).thenThrow(FeignException.class);

        Authentication auth = new UsernamePasswordAuthenticationToken(AUTHENTICATED_UTILISATEUR,
                                                                      AUTHENTICATED_UTILISATEUR.getPassword(),
                                                                      AUTHENTICATED_UTILISATEUR.getAuthorities());

        assertThatExceptionOfType(BadCredentialsException.class).isThrownBy(() -> {
            customAuthenticationProvider.authenticate(auth);
        });

    }

    @Test
    public void testAuthenticationValidUser() {

        Mockito.when(utilisateurProxy.authenticateUser(anyString(), anyString())).thenReturn(AUTHENTICATED_UTILISATEUR);

        Authentication auth = new UsernamePasswordAuthenticationToken(AUTHENTICATED_UTILISATEUR,
                                                                      AUTHENTICATED_UTILISATEUR.getPassword(),
                                                                      AUTHENTICATED_UTILISATEUR.getAuthorities());

        Authentication authenticate = customAuthenticationProvider.authenticate(auth);

        assertThat(authenticate.getName()).isEqualTo("test@test.co");
        assertThat(authenticate.getPrincipal()).isEqualTo(AUTHENTICATED_UTILISATEUR);

    }

}
