package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.User;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Optional;

@RequiredArgsConstructor
public class AppAuthProvider extends DaoAuthenticationProvider {

    @Autowired
    private UtilisateurProxy utilisateurProxy;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        UsernamePasswordAuthenticationToken auth = (UsernamePasswordAuthenticationToken) authentication;
        String email = auth.getName();
        String password = auth.getCredentials()
                .toString();
        Optional<User> optionalUser = utilisateurProxy.loadUserByEmail(email);
        if (!optionalUser.isPresent()) {
            throw new BadCredentialsException("Username/Password does not match for " + auth.getPrincipal());
        }
        return new UsernamePasswordAuthenticationToken(optionalUser.get(), null, optionalUser.get().getAuthorities());
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }

}
