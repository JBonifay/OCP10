package com.openclassrooms.ouvrage.service;

import com.openclassrooms.ouvrage.dto.OuvrageMapper;
import com.openclassrooms.ouvrage.dto.OuvrageStockDto;
import com.openclassrooms.ouvrage.model.Ouvrage;
import com.openclassrooms.ouvrage.repository.OuvrageRepository;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageRepository ouvrageRepository;

    public List<OuvrageStockDto> getAllOuvrageList(Pageable pageable) {
        List<Ouvrage> ouvrageList = ouvrageRepository.findAll(pageable).getContent();
        return ouvrageList.stream().map(OuvrageMapper.INSTANCE::ouvrageToOuvrageStockDto).collect(Collectors.toList());
    }

}
