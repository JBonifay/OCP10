package com.openclassrooms.controller;

import com.openclassrooms.beans.ouvrage.OuvrageDescriptionBean;
import com.openclassrooms.proxies.OuvrageProxy;
import com.openclassrooms.proxies.RestPageImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class OuvragePageController {

    private final OuvrageProxy ouvrageProxy;

    @GetMapping("/listedesouvrages")
    public ModelAndView getOuvragesPage(Pageable pageable) {
        ModelAndView ouvrages = new ModelAndView("listedesouvrages");

        RestPageImpl ouvragePage = ouvrageProxy.getAllOuvrageListByPage(pageable);

        ouvrages.addObject("ouvrages", ouvragePage.getContent());
        ouvrages.addObject("pageNumber", ouvragePage.getTotalPages());

        return ouvrages;
    }

    @RequestMapping("/ouvrage")
    public ModelAndView getOuvragesPage(@RequestParam(value = "id") String ouvrageId) {
        ModelAndView description = new ModelAndView("description");

        OuvrageDescriptionBean ouvrageDescriptionBean = ouvrageProxy.getOuvrageDescriptionById(ouvrageId);
        description.addObject("ouvrage", ouvrageDescriptionBean);

        return description;
    }

}