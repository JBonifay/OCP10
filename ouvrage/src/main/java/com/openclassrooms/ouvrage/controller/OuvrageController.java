package com.openclassrooms.ouvrage.controller;

import com.openclassrooms.ouvrage.model.Ouvrage;
import com.openclassrooms.ouvrage.service.OuvrageService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class OuvrageController {

    private final OuvrageService ouvrageService;

    @GetMapping(value = "/livre")
    public Page<Ouvrage> listeDesProduits(Pageable pageable) {

        Page<Ouvrage> allOuvrageList = ouvrageService.getAllLivreList(pageable);

        return allOuvrageList;

    }

}
