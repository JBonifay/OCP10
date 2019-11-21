package com.openclassrooms.ouvrage.controller;

import com.openclassrooms.ouvrage.dto.OuvrageStockDto;
import com.openclassrooms.ouvrage.service.OuvrageService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class OuvrageController {

    private final OuvrageService ouvrageService;

    @GetMapping(value = "/ouvrage")
    public List<OuvrageStockDto> listeDesOuvrage(Pageable pageable) {
        return ouvrageService.getAllOuvrageList(pageable);
    }

}
