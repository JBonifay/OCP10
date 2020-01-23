package com.openclassrooms.utilisateur.rest;

import com.openclassrooms.utilisateur.model.Utilisateur;
import com.openclassrooms.utilisateur.repository.UtilisateurRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequiredArgsConstructor
public class UtilisateurController {

    private final UtilisateurRepository utilisateurRepository;

    @GetMapping("/utilisateur")
    public ResponseEntity<Utilisateur> getUtilisateurById(@RequestParam String utilisateurId) {
        Utilisateur utilisateur = utilisateurRepository.findById(Integer.valueOf(utilisateurId)).orElse(null);
        if (utilisateur == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found");
        }
        return ResponseEntity.ok(utilisateur);
    }

    @GetMapping("/utilisateur/{email}")
    public ResponseEntity<Utilisateur> getUtilisateurByEmail(@PathVariable String email) {
        Utilisateur utilisateur = utilisateurRepository.findUtilisateurByEmailIgnoreCase(email).orElse(null);
        if (utilisateur == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found");
        }
        return ResponseEntity.ok(utilisateur);
    }


}
