package com.openclassrooms.bibliotheque.ouvrage.rest.controller;

import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageMapper;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageNameIdDto;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageStockDto;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.ProduitIntrouvableException;
import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.service.OuvrageService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class OuvrageController {
    
    private final OuvrageService ouvrageService;
    private final OuvrageMapper  ouvrageMapper;
    
    @GetMapping(value = "/ouvrages")
    public ResponseEntity<Page<OuvrageStockDto>> getAllOuvrageListe(Pageable pageable) {
        return ResponseEntity.ok(ouvrageService.getAll(pageable).map(ouvrageMapper::toOuvrageStockDto));
    }
    
    @GetMapping(value = "/ouvrage/{ouvrageId}/description")
    public ResponseEntity<OuvrageDescriptionDto> getDescriptionByOuvrageId(@PathVariable int ouvrageId)
            throws ProduitIntrouvableException {
        Ouvrage ouvrage = ouvrageService.findOuvrageById(ouvrageId);
        if (ouvrage == null) {
            throw new ProduitIntrouvableException("Ouvrage introuvable.");
        }
        return ResponseEntity.ok(ouvrageMapper.toOuvrageDescriptionDto(ouvrage));
    }
    
    @PostMapping("/ouvrages")
    public ResponseEntity<List<OuvrageNameIdDto>> getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> ouvrageIdList) {
        if (ouvrageIdList.isEmpty()) {
            throw new ProduitIntrouvableException("Erreur dans la récupération des reservations");
        }
        return ResponseEntity
                .ok(ouvrageService.findAllByOuvrageIdList(ouvrageIdList).stream().map(ouvrageMapper::toOuvrageNameIdDto)
                        .collect(Collectors.toList()));
    }
    
    @PutMapping("/ouvrage/{ouvrageId}/reserver")
    public ResponseEntity removeOneOuvrageQuantityFromStock(@PathVariable int ouvrageId) {
        boolean removed = ouvrageService.removeOneFromStock(ouvrageId);
        if (removed) {
            return ResponseEntity.ok("Stock baissé d’une unité");
        } else {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
    }
    
}
