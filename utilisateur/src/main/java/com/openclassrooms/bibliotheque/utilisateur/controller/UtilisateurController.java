package com.openclassrooms.bibliotheque.utilisateur.controller;

import com.openclassrooms.bibliotheque.utilisateur.model.Utilisateur;
import com.openclassrooms.bibliotheque.utilisateur.service.UtilisateurService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class UtilisateurController {
    
    private final UtilisateurService utilisateurService;
    
    @GetMapping("/utilisateur/loaduser/{email}")
    public ResponseEntity<Utilisateur> getUtilisateurByEmail(@PathVariable String email) {
        Utilisateur utilisateur = utilisateurService.findUtilisateurByEmail(email);
        if (utilisateur == null) {
        }
        return ResponseEntity.ok(utilisateur);
    }
    
}
