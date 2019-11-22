package com.openclassrooms.ouvrage.controller;


import com.openclassrooms.ouvrage.dto.OuvrageDescriptionDto;
import com.openclassrooms.ouvrage.dto.OuvrageMapper;
import com.openclassrooms.ouvrage.dto.OuvrageStockDto;
import com.openclassrooms.ouvrage.service.OuvrageService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class OuvrageController {

    private final OuvrageService ouvrageService;
    private final OuvrageMapper  ouvrageMapper;

    @GetMapping(value = "/ouvrage")
    public ResponseEntity<List<OuvrageStockDto>> listeDesOuvrage(Pageable pageable) {
        return ResponseEntity.ok(ouvrageMapper.toProductDTOs(ouvrageService.getAll(pageable)));
    }

    @GetMapping(value = "/ouvrage")
    public ResponseEntity<OuvrageDescriptionDto> descriptionOuvrage(@PathVariable int id) {
        return ResponseEntity.ok(ouvrageMapper.toOuvrageDescriptionDto(ouvrageService.getOuvrageById(id)));

    }

}
