package com.openclassrooms.bibliotheque.ouvrage.service;

import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.repository.OuvrageRepository;
import java.util.List;
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
        return ouvrageIdList.stream().map(ouvrageRepository::findByOuvrageId).collect(Collectors.toList());
    }
    
}
