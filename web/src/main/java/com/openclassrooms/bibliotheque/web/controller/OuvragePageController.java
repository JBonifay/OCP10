package com.openclassrooms.bibliotheque.web.controller;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageDescriptionBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageStockBean;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class OuvragePageController {

    private final OuvrageProxy ouvrageProxy;

    @GetMapping({"/listedesouvrages", "/"})
    public ModelAndView getOuvragesPage(Pageable pageable) {
        ModelAndView ouvrages = new ModelAndView("listedesouvrages");

        ResponseEntity<RestPageImpl<OuvrageStockBean>> ouvragePage = ouvrageProxy.getAllOuvrageListByPage(pageable);

        if (ouvragePage.getStatusCode() == HttpStatus.OK) {
            ouvrages.addObject("ouvrages", ouvragePage.getBody().getContent());
            ouvrages.addObject("pageNumber", ouvragePage.getBody().getTotalPages());
        } else {
            // TODO: 404 Page
        }

        return ouvrages;
    }

    @RequestMapping("/ouvrage")
    public ModelAndView getOuvragesPage(@RequestParam(value = "id") int ouvrageId) {
        ModelAndView description = new ModelAndView("description");

        ResponseEntity<OuvrageDescriptionBean> ouvrageDescriptionBean = ouvrageProxy.getOuvrageDescriptionById(ouvrageId);

        if (ouvrageDescriptionBean.getStatusCode() == HttpStatus.OK) {
            description.addObject("ouvrage", ouvrageDescriptionBean.getBody());
        } else {
            // TODO: 404 Page
        }

        return description;
    }

}