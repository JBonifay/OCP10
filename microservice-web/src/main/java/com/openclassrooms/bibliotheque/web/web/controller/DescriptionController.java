package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class DescriptionController {

    private final OuvrageProxy ouvrageProxy;
    private final ReservationProxy reservationProxy;


    @GetMapping("/ouvrage/description")
    public ModelAndView getOuvrageDescriptionPage(@RequestParam(value = "id") int ouvrageId) {
        ModelAndView description = new ModelAndView("description");
        OuvrageDescriptionDto ouvrageDescriptionDto = ouvrageProxy.getOuvrageDescriptionById(ouvrageId);
        description.addObject("ouvrage", ouvrageDescriptionDto);
        return description;
    }

    @GetMapping("/reservation/creer")
    public ModelAndView createReservationForUser(@RequestParam(value = "ouvrage_id") int ouvrageId, @RequestParam(value = "user_id") int userId) {

        return null;
    }

}
