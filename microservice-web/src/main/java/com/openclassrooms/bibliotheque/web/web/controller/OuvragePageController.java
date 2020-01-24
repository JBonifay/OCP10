package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageStockDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
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
    public ModelAndView getOuvragesPage(Pageable pageable) throws NotFoundException {
        ModelAndView ouvrages = new ModelAndView("listedesouvrages");
        RestPageImpl<OuvrageStockDto> ouvragePage = ouvrageProxy.getAllOuvrageListByPage(pageable);

        if (ouvragePage.getPageable().getPageNumber() > ouvragePage.getTotalPages()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "La page demandé");
        }
        ouvrages.addObject("ouvrages", ouvragePage.getContent());
        ouvrages.addObject("pageable", ouvragePage);

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