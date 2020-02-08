package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageFiltre;
import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageRechercheBody;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageStockDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class OuvragePageController {

    private final OuvrageProxy ouvrageProxy;

    @GetMapping({"/listedesouvrages", "/"})
    public ModelAndView getOuvragesPage(Pageable pageable, OuvrageFiltre ouvrageFiltre) {
        ModelAndView ouvrages = new ModelAndView("listedesouvrages");

        OuvrageRechercheBody o = new OuvrageRechercheBody(pageable.getPageNumber(),
                pageable.getPageSize(), "", "", null, "", 0,
                0, 0);

        RestPageImpl<OuvrageStockDto> ouvragePage = ouvrageProxy.getAllOuvrageListByPage(o);

        if (ouvragePage.getPageable().getPageNumber() > ouvragePage.getTotalPages()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "La page demandé");
        }
        ouvrages.addObject("ouvrages", ouvragePage.getContent());
        ouvrages.addObject("pageable", ouvragePage);
        ouvrages.addObject("filter", ouvrageFiltre);

        return ouvrages;
    }

    @GetMapping("/ouvrage")
    public ModelAndView getOuvrageDescriptionPage(@RequestParam(value = "id") int ouvrageId) {
        ModelAndView description = new ModelAndView("description");
        OuvrageDescriptionDto ouvrageDescriptionDto = ouvrageProxy.getOuvrageDescriptionById(ouvrageId);
        description.addObject("ouvrage", ouvrageDescriptionDto);
        return description;
    }

}
