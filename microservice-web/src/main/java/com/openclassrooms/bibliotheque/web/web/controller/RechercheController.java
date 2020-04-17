package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageFiltre;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageStockDto;
import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import com.openclassrooms.bibliotheque.web.service.RechercheService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class RechercheController {

    private final RechercheService rechercheService;

    @GetMapping({"/listedesouvrages", "/"})
    public ModelAndView getOuvragesPage(Pageable pageable, OuvrageFiltre ouvrageFiltre) {
        return getModelAndView(pageable, ouvrageFiltre);
    }

    @PostMapping("/listedesouvrages")
    public ModelAndView applyFilter(Pageable pageable, OuvrageFiltre ouvrageFiltre) {
        return getModelAndView(pageable, ouvrageFiltre);
    }

    private ModelAndView getModelAndView(Pageable pageable, OuvrageFiltre ouvrageFiltre) {
        ModelAndView ouvrages = new ModelAndView("listedesouvrages");

        RestPageImpl<OuvrageStockDto> ouvragePage = rechercheService.getAllOuvrageListByPage(pageable, ouvrageFiltre);

        ouvrages.addObject("ouvrages", ouvragePage.getContent());
        ouvrages.addObject("pageable", ouvragePage);
        ouvrages.addObject("ouvrageFiltre", ouvrageFiltre);

        return ouvrages;
    }


}
