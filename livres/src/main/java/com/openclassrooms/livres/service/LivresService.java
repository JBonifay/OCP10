package com.openclassrooms.livres.service;

import com.openclassrooms.livres.model.Livre;
import com.openclassrooms.livres.repository.LivresRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LivresService {

    private final LivresRepository livresRepository;

    public List<Livre> getAllLivreList() {
        return livresRepository.findAll();
    }

}
