package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@Slf4j
@RequiredArgsConstructor
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
    public RedirectView createReservationForUser(@RequestParam(value = "ouvrage_id") int ouvrageId) {
        UtilisateurDto utilisateurDto = (UtilisateurDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        try {
            reservationProxy.createNewReservation(utilisateurDto.getUtilisateurId(), ouvrageId);
        } catch (Exception e) {
            log.error(e.getMessage());
        }

        return new RedirectView("/reservation?error=BLALALALLALALALA");
    }

}
