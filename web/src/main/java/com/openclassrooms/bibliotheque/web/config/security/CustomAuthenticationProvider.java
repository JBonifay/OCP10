package com.openclassrooms.bibliotheque.web.config.security;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import java.util.ArrayList;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;

@Configuration
@RequiredArgsConstructor
public class CustomAuthenticationProvider implements AuthenticationProvider {

    private final UtilisateurProxy utilisateurProxy;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        final String name = authentication.getName();
        final String password = authentication.getCredentials().toString();

        if (!name.isEmpty()) {
            UtilisateurBean authenticateUser = utilisateurProxy.authenticateUser(authentication).orElse(null);

            final UserDetails principal = new User(name, password, new ArrayList<>());
            return new UsernamePasswordAuthenticationToken(principal, password, new ArrayList<>());


        } else {
            return null;
        }
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

}
