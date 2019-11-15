package com.openclassrooms.ouvrage.service;

import com.openclassrooms.ouvrage.model.Ouvrage;
import com.openclassrooms.ouvrage.repository.OuvrageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageRepository ouvrageRepository;

    public Page<Ouvrage> getAllLivreList(Pageable pageable) {
        return ouvrageRepository.findAll(pageable);
    }

}
