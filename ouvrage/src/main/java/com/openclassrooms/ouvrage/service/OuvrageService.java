package com.openclassrooms.ouvrage.service;

import com.openclassrooms.ouvrage.model.Ouvrage;
import com.openclassrooms.ouvrage.repository.OuvrageRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageRepository ouvrageRepository;

    public List<Ouvrage> getAllLivreList() {
        return ouvrageRepository.findAll();
    }

}
