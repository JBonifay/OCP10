package com.openclassrooms.ouvrage.controller;

import com.openclassrooms.ouvrage.model.Ouvrage;
import com.openclassrooms.ouvrage.service.OuvrageService;
import java.awt.print.Pageable;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class OuvrageController {

    private final OuvrageService ouvrageService;

    @GetMapping(value = "/livre")
    public List<Ouvrage> listeDesProduits(Pageable pageable) {

        List<Ouvrage> allOuvrageList = ouvrageService.getAllLivreList(pageable);

        return allOuvrageList;

    }

}
