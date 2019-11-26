package com.openclassrooms.bibliotheque.ouvrage.controller;


import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageMapper;
import com.openclassrooms.bibliotheque.ouvrage.exceptions.ProduitIntrouvableException;
import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.service.OuvrageService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class OuvrageController {

    private final OuvrageService ouvrageService;
    private final OuvrageMapper  ouvrageMapper;

    @GetMapping(value = "/ouvrage")
    public ResponseEntity getAllOuvrageListe(Pageable pageable) {
        return ResponseEntity.ok(ouvrageService.getAll(pageable).map(ouvrageMapper::toOuvrageStockDto));


    }

    @RequestMapping(value = "/ouvrage/{ouvrageId}")
    public ResponseEntity<OuvrageDescriptionDto> getDescriptionByOuvrageId(@PathVariable int ouvrageId) throws ProduitIntrouvableException {

        Ouvrage ouvrage = ouvrageService.findOuvrageById(ouvrageId);

        if (ouvrage == null) {
            throw new ProduitIntrouvableException("Ouvrage introuvable.");
        }

        return ResponseEntity.ok(ouvrageMapper.toOuvrageDescriptionDto(ouvrage));
    }

    @PostMapping("/ouvrage/allouvragebyouvrageidlist")
    public ResponseEntity getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> ouvrageIdList) {

        if (ouvrageIdList.isEmpty()) {
            throw new ProduitIntrouvableException("Erreur dans la récupération des reservations");
        }

        return ResponseEntity.ok(ouvrageService.findAllByOuvrageIdList(ouvrageIdList)
                                               .stream()
                                               .map(ouvrageMapper::toOuvrageNameIdDto)
                                               .collect(Collectors.toList()));
    }

}
