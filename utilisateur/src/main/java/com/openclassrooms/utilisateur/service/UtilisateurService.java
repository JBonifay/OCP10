package com.openclassrooms.utilisateur.service;

import com.openclassrooms.utilisateur.model.Utilisateur;
import com.openclassrooms.utilisateur.repository.UtilisateurRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UtilisateurService {

    private final UtilisateurRepository utilisateurRepository;



}
