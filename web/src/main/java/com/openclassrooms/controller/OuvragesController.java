package com.openclassrooms.controller;

import com.openclassrooms.proxies.LivreProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class OuvragesController {

    private final LivreProxy livreProxy;

    @GetMapping("/ouvrages")
    public ModelAndView getOuvragesPage(Pageable pageable) {
        ModelAndView ouvrages = new ModelAndView("ouvrages");
        ouvrages.addObject("livres", livreProxy.getLivreList());
        return ouvrages;
    }

}