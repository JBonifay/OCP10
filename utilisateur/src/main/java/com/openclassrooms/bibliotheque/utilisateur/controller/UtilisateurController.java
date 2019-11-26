package com.openclassrooms.bibliotheque.utilisateur.controller;

import com.openclassrooms.bibliotheque.utilisateur.model.Utilisateur;
import com.openclassrooms.bibliotheque.utilisateur.service.UtilisateurService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class UtilisateurController {

    private final UtilisateurService utilisateurService;

    @GetMapping("utilisateur")
    public Utilisateur getUtilisateur() {
        return null;
    }

}
