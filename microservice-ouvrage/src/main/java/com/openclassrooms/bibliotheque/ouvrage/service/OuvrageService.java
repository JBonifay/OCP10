package com.openclassrooms.bibliotheque.ouvrage.service;

import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageRechercheWrapper;
import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.repository.OuvrageRepository;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.StockErrorException;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageRepository ouvrageRepository;

    public Page<Ouvrage> getFilteredResult(OuvrageRechercheWrapper ouvrageRechercheWrapper) {
        Pageable pageRequest = PageRequest.of(ouvrageRechercheWrapper.getPageNumber(), ouvrageRechercheWrapper.getPageSize());
        Page<Ouvrage> ouvragePage;

        ouvragePage = ouvrageRepository.getFilteredResult(
                "%" + ouvrageRechercheWrapper.getName() + "%",
                "%" +ouvrageRechercheWrapper.getAuthor() + "%",
                "%" + ouvrageRechercheWrapper.getEditor() + "%",
                ouvrageRechercheWrapper.getNumberOfPages(),
                ouvrageRechercheWrapper.getNotation(),
                ouvrageRechercheWrapper.getQuantity(),
                pageRequest
        );

        return ouvragePage;
    }

    @Transactional
    public Ouvrage findOuvrageById(int ouvrageId) {
        return ouvrageRepository.findByOuvrageId(ouvrageId)
                .orElseThrow(OuvrageNotFoundException::new);
    }

    public List<Ouvrage> findAllByOuvrageIdList(List<Integer> ouvrageIdList) {
        return ouvrageIdList.stream().map(integer -> ouvrageRepository.findByOuvrageId(integer)
                .orElseThrow(OuvrageNotFoundException::new))
                .collect(Collectors.toList());
    }

    public void removeOneFromStock(int ouvrageId) {
        Ouvrage ouvrage = ouvrageRepository.findByOuvrageId(ouvrageId)
                .orElseThrow(OuvrageNotFoundException::new);


        if (ouvrage.getStock().getQuantity() > 0) {
            ouvrage.getStock().setQuantity(ouvrage.getStock().getQuantity() - 1);
            ouvrageRepository.save(ouvrage);
        } else {
            throw new StockErrorException("L'ouvrage n'est plus en stock ...");
        }
    }

    public Integer getNumberInStock(int ouvrageId) {
        return ouvrageRepository.findByOuvrageId(ouvrageId)
                .orElseThrow(OuvrageNotFoundException::new).getStock()
                .getQuantity();
    }

}
