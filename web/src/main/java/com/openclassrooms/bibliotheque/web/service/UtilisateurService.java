package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.web.proxies.AuthProxy;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import java.util.ArrayList;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class UtilisateurService implements AuthenticationProvider {

    private final AuthProxy        authProxy;
    private final UtilisateurProxy utilisateurProxy;
    private final PasswordEncoder  passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String email = authentication.getName();
        String password = authentication.getCredentials().toString();

        UtilisateurBean utilisateurBean = new UtilisateurBean();
        utilisateurBean.setEmail(email);

        // TODO pass encoder in UtilisateurMicroservice
        utilisateurBean.setPassword(passwordEncoder.encode(password));

        //TODO
        String token = generateToken(utilisateurBean);
        utilisateurBean.setToken(token);

        UtilisateurBean authenticatedUser = loadUser(utilisateurBean);

        if (authenticatedUser != null && passwordEncoder.matches(password, authenticatedUser.getPassword())) {
            return new UsernamePasswordAuthenticationToken(authenticatedUser, password, new ArrayList<>());
        } else {
            throw new BadCredentialsException("Authentification échoué");
        }
    }

    private UtilisateurBean loadUser(UtilisateurBean utilisateurBean) {
        return utilisateurProxy.loadUserByEmail(utilisateurBean.getEmail(), utilisateurBean.getToken()).map(utilisateur -> {
            utilisateur.setToken(utilisateurBean.getToken());
            return utilisateur;
        }).orElse(null);
    }

    private String generateToken(UtilisateurBean authentication) {
        return authProxy.generateToken(authentication);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

}