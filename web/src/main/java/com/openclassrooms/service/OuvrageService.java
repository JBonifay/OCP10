package com.openclassrooms.service;

import com.openclassrooms.proxies.OuvrageProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageProxy ouvrageProxy;


    public List<> getOuvrageDtoListPage(Pageable pageable) {



        return null;
    }

}
