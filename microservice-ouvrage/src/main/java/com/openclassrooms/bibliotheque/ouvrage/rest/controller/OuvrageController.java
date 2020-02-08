package com.openclassrooms.bibliotheque.ouvrage.rest.controller;

import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageMapper;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageNameIdDto;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageRechercheBody;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageStockDto;
import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.service.OuvrageService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
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

    /**
     * Get a page of Ouvrage objects
     *
     * @return a page filled with ouvrages objects filtered
     */
    @GetMapping(value = "/ouvrages")
    public ResponseEntity<Page<OuvrageStockDto>> getAllOuvrageListe(@RequestBody OuvrageRechercheBody ouvrageRechercheBody) {
            return ResponseEntity.ok(ouvrageService
                .getAll(PageRequest.of(ouvrageRechercheBody.getPageNumber(), ouvrageRechercheBody.getPageSize()))
                .map(ouvrageMapper::toOuvrageStockDto));
    }

    /**
     * Get a description of the ouvrage
     *
     * @param ouvrageId the ouvrage id
     * @return ouvrageDescrition Dto object {@link OuvrageDescriptionDto}
     * @throws OuvrageNotFoundException if ouvrage not found
     */
    @GetMapping(value = "/ouvrage/{ouvrageId}/description")
    public ResponseEntity<OuvrageDescriptionDto> getDescriptionByOuvrageId(@PathVariable int ouvrageId)
            throws OuvrageNotFoundException {
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
    @PostMapping("/ouvrages")
    public ResponseEntity<List<OuvrageNameIdDto>> getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> ouvrageIdList) {
        if (ouvrageIdList.isEmpty()) {
            throw new OuvrageNotFoundException("Erreur dans la récupération des reservations");
        }
        return ResponseEntity
                .ok(ouvrageService.findAllByOuvrageIdList(ouvrageIdList).stream().map(ouvrageMapper::toOuvrageNameIdDto)
                        .collect(Collectors.toList()));
    }

    /**
     * Used when a reservation is created, remove one stock value for a ouvrage
     *
     * @param ouvrageId the ouvrage id
     * @return a response entity with Ok for success or Bad request if error occurred
     */
    @PutMapping("/ouvrage/{ouvrageId}/reserver")
    public ResponseEntity<String> removeOneOuvrageQuantityFromStock(@PathVariable int ouvrageId) {
        ouvrageService.removeOneFromStock(ouvrageId);
        return ResponseEntity.ok("Stock baissé d’une unité");
    }

}
