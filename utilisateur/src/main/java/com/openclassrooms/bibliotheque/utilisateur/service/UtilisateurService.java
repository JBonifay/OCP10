package com.openclassrooms.bibliotheque.utilisateur.service;

import com.openclassrooms.bibliotheque.utilisateur.model.Utilisateur;
import com.openclassrooms.bibliotheque.utilisateur.repository.UtilisateurRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UtilisateurService {
    
    private final UtilisateurRepository utilisateurRepository;
    
    public Utilisateur findUtilisateurByEmail(final String email) {
        return utilisateurRepository.findByEmail(email);
    }
    
}
