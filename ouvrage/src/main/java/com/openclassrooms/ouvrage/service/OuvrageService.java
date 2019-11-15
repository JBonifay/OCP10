package com.openclassrooms.ouvrage.service;

import com.openclassrooms.ouvrage.model.Ouvrage;
import com.openclassrooms.ouvrage.repository.OuvrageRepository;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageRepository ouvrageRepository;

    public List<Ouvrage> getAllOuvrageList(Pageable pageable) {
        return ouvrageRepository.findAll(pageable).toList();
    }

}
