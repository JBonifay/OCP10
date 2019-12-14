package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.web.proxies.AuthProxy;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import java.util.Objects;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class UserService implements UserDetailsService {

    private final UtilisateurProxy utilisateurProxy;
    private final AuthProxy authProxy;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Objects.requireNonNull(username);

        return utilisateurProxy.loadUserByEmail(username)
            .orElseThrow(() -> new UsernameNotFoundException("User not found"));
    }


    public String generateToken(UtilisateurBean authentication) {
        return authProxy.generateToken(authentication);
    }
}
