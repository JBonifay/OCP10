package com.openclassrooms.controller;

import com.openclassrooms.proxies.OuvrageProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class OuvragePageController {

    private final OuvrageProxy ouvrageProxy;

    @GetMapping("/listedesouvrages")
    public ModelAndView getOuvragesPage(Pageable pageable) {
        ModelAndView ouvrages = new ModelAndView("listedesouvrages");
        ouvrages.addObject("ouvrages", ouvrageProxy.getAllOuvrageListByPage(pageable));

        return ouvrages;
    }

}