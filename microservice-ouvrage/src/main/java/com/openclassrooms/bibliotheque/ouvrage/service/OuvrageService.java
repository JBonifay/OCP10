package com.openclassrooms.bibliotheque.ouvrage.service;

import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.repository.OuvrageRepository;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.StockErrorException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageRepository ouvrageRepository;

    public Page<Ouvrage> getAll(Pageable pageable) {
        return ouvrageRepository.findAll(pageable);
    }

    public Ouvrage findOuvrageById(int ouvrageId) {
        return ouvrageRepository.findByOuvrageId(ouvrageId);
    }

    public List<Ouvrage> findAllByOuvrageIdList(List<Integer> ouvrageIdList) {
        return ouvrageIdList.stream().map(integer -> Optional.ofNullable(ouvrageRepository.findByOuvrageId(integer)).orElseThrow(OuvrageNotFoundException::new)).collect(Collectors.toList());
    }

    public void removeOneFromStock(int ouvrageId) {
        Ouvrage ouvrage = ouvrageRepository.findByOuvrageId(ouvrageId);

        if (ouvrage == null) {
            throw new OuvrageNotFoundException();
        }

        if (ouvrage.getStock().getQuantity() > 0) {
            ouvrage.getStock().setQuantity(ouvrage.getStock().getQuantity() - 1);
            ouvrageRepository.save(ouvrage);
        } else {
            throw new StockErrorException("L'ouvrage n'est plus en stock ...");
        }
    }

}