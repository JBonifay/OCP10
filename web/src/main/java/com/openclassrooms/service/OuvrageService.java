package com.openclassrooms.service;

import com.openclassrooms.beans.OuvrageBean;
import com.openclassrooms.proxies.OuvrageProxy;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OuvrageService {

    private final OuvrageProxy ouvrageProxy;


    public List<OuvrageBean> getOuvrageDtoListPage(Pageable pageable) {

        return null;
    }

}
