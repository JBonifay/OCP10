package com.openclassrooms.bibliotheque.zuulserver.service;

import com.openclassrooms.bibliotheque.zuulserver.proxies.UtilisateurProxy;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {

    private final UtilisateurProxy utilisateurProxy;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return Optional.ofNullable(utilisateurProxy.findUtilisateurByEmailIgnoreCase(email)).orElse(null);
    }
}
