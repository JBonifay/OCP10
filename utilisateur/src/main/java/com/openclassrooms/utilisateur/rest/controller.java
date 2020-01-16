package com.openclassrooms.utilisateur.rest;

import com.openclassrooms.utilisateur.model.Utilisateur;
import com.openclassrooms.utilisateur.repository.UtilisateurRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class controller {

    private final UtilisateurRepository utilisateurRepository;

    @GetMapping("/utilisateur")
    public ResponseEntity<Utilisateur> getUtilisateurById(@RequestParam String utilisateurId) {
        return ResponseEntity.of(utilisateurRepository.findById(Integer.valueOf(utilisateurId)));
    }

    @GetMapping("/utilisateur/{email}")
    public ResponseEntity<Utilisateur> getUtilisateurByEmail(@PathVariable String email) {
        return ResponseEntity.of(utilisateurRepository.findUtilisateurByEmailIgnoreCase(email));
    }


}
