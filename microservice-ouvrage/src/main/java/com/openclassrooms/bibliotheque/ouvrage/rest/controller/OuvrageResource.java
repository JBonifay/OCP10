package com.openclassrooms.bibliotheque.ouvrage.rest.controller;

import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageMapper;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageNameIdDto;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageRechercheWrapper;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageStockDto;
import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.service.OuvrageService;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class OuvrageResource {

    private final OuvrageService ouvrageService;
    private final OuvrageMapper  ouvrageMapper;

    /**
     * Get a page of Ouvrage objects
     *
     * @return a page filled with ouvrages objects filtered
     */
    @PostMapping(value = "/ouvrage/recherche")
    public ResponseEntity<Page<OuvrageStockDto>> getAllOuvrageListe(@RequestBody OuvrageRechercheWrapper ouvrageRechercheWrapper) {
            return ResponseEntity.ok(ouvrageService
                .getFilteredResult(ouvrageRechercheWrapper)
                .map(ouvrageMapper::toOuvrageStockDto));
    }

    /**
     * Get a description of the ouvrage
     *
     * @param ouvrageId the ouvrage id
     * @return ouvrageDescrition Dto object {@link OuvrageDescriptionDto}
     * @throws OuvrageNotFoundException if ouvrage not found
     */
    @GetMapping(value = "/ouvrage/description/{ouvrageId}")
    public ResponseEntity<OuvrageDescriptionDto> getDescriptionByOuvrageId(@PathVariable int ouvrageId) {
        Ouvrage ouvrage = ouvrageService.findOuvrageById(ouvrageId);
        if (ouvrage == null) {
            throw new OuvrageNotFoundException("Ouvrage introuvable.");
        }
        return ResponseEntity.ok(ouvrageMapper.toOuvrageDescriptionDto(ouvrage));
    }

    /**
     * Get all ouvrage by a list of Ouvrage Id
     *
     * @param ouvrageIdList the List<> containing ouvrage Id
     * @return A List of OuvrageNameIdDto {@link OuvrageNameIdDto}
     */
    @PostMapping("/ouvrage/list")
    public ResponseEntity<List<OuvrageNameIdDto>> getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> ouvrageIdList) {
        return Optional.of(ResponseEntity
                .ok(ouvrageService.findAllByOuvrageIdList(ouvrageIdList).stream().map(ouvrageMapper::toOuvrageNameIdDto)
                        .collect(Collectors.toList())))
                .orElse(ResponseEntity.ok(Collections.emptyList()));
    }

    /**
     * Used when a reservation is created, remove one stock value for a ouvrage
     *
     * @param ouvrageId the ouvrage id
     * @return a response entity with Ok for success or Bad request if error occurred
     */
    @PutMapping("/ouvrage/reserver/{ouvrageId}")
    public ResponseEntity<Boolean> removeOneOuvrageQuantityFromStock(@PathVariable int ouvrageId) {
        ouvrageService.removeOneFromStock(ouvrageId);
        return ResponseEntity.ok(true);
    }

    @GetMapping("/ouvrage/info/nbrinstock")
    public ResponseEntity<Integer> getNbrInStock(@RequestParam int ouvrageId) {
        return ResponseEntity.ok(ouvrageService.getNumberInStock(ouvrageId));
    }

}
