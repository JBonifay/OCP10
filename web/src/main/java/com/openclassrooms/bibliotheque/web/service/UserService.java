package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Objects;

@RequiredArgsConstructor
@Service
public class UserService implements UserDetailsService {

    private final UtilisateurProxy utilisateurProxy;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Objects.requireNonNull(username);

        return utilisateurProxy.loadUserByEmail(username)
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
    }

}
