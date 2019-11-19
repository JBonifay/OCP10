package com.openclassrooms.ouvrage.controller;

import com.openclassrooms.ouvrage.model.Ouvrage;
import com.openclassrooms.ouvrage.service.OuvrageService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class OuvrageController {

    // SRP Single responsability principe
    // Solid

    private final OuvrageService ouvrageService;

    @GetMapping(value = "/ouvrage")
    public List<Ouvrage> listeDesOuvrage(Pageable pageable) {

        List<Ouvrage> allOuvrageList = ouvrageService.getAllOuvrageList(pageable);

        return allOuvrageList;

    }

}
