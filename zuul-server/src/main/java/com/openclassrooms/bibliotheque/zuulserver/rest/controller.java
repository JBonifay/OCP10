package com.openclassrooms.bibliotheque.zuulserver.rest;

import com.openclassrooms.bibliotheque.zuulserver.model.Utilisateur;
import com.openclassrooms.bibliotheque.zuulserver.repository.UtilisateurRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class controller {

    private final UtilisateurRepository utilisateurRepository;

    @GetMapping("/utilisateur/{utilisateurId}")
    public ResponseEntity<Utilisateur> getUtilisateurById(@PathVariable String utilisateurId) {
        return ResponseEntity.of(utilisateurRepository.findById(Integer.valueOf(utilisateurId)));
    }

}
