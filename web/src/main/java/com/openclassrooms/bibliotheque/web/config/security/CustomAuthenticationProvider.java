package com.openclassrooms.bibliotheque.web.config.security;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import java.util.ArrayList;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;

@Configuration
@RequiredArgsConstructor
public class CustomAuthenticationProvider implements AuthenticationProvider {

    private final UtilisateurProxy utilisateurProxy;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        final String email = authentication.getName();
        final String password = authentication.getCredentials().toString();

        if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {

            UtilisateurBean authenticatedUtilisateur = utilisateurProxy.authenticateUser(email, password).orElse(null);

            if (authenticatedUtilisateur != null) {
                return new UsernamePasswordAuthenticationToken(authenticatedUtilisateur, password, new ArrayList<>());
            }
        }
            throw new BadCredentialsException("External system authentication failed");
    }

        @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

}
