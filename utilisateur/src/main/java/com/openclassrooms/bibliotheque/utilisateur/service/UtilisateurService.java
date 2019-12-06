package com.openclassrooms.bibliotheque.utilisateur.service;

import com.openclassrooms.bibliotheque.utilisateur.repository.UtilisateurRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UtilisateurService implements UserDetailsService {

    private final UtilisateurRepository utilisateurRepository;


    @Override
    public UserDetails loadUserByUsername(final String email) throws UsernameNotFoundException {
        return utilisateurRepository.findByEmail(email);
    }

}
