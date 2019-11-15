package com.openclassrooms.controller;

import com.openclassrooms.proxies.OuvrageProxy;
import com.openclassrooms.service.OuvrageService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class OuvragePageController {

    private final OuvrageService ouvrageService;

    @GetMapping("/listedesouvrages")
    public ModelAndView getOuvragesPage(Pageable pageable) {
        ModelAndView ouvrages = new ModelAndView("listedesouvrages");
        ouvrages.addObject("ouvrages", ouvrageService.getOuvrageDtoListPage(pageable));
        return ouvrages;
    }

}