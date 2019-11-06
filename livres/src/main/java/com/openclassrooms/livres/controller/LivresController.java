package com.openclassrooms.livres.controller;

import com.openclassrooms.livres.model.Livre;
import com.openclassrooms.livres.service.LivresService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class LivresController {

    private final LivresService livresService;

    @GetMapping(value = "/livre")
    public List<Livre> listeDesProduits() {

        List<Livre> allLivreList = livresService.getAllLivreList();

        return allLivreList;

    }

}
