package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import feign.FeignException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@Slf4j
@RequiredArgsConstructor
public class DescriptionController {

    private static final String ERROR_MESSAGE = "errorMessage";

    private final OuvrageProxy     ouvrageProxy;
    private final ReservationProxy reservationProxy;

    @GetMapping("/ouvrage/description")
    public ModelAndView getOuvrageDescriptionPage(@RequestParam(value = "id") int ouvrageId, @ModelAttribute("errorMessage") String errorMessage) {
        ModelAndView description = new ModelAndView("description");
        OuvrageDescriptionDto ouvrageDescriptionDto = ouvrageProxy.getOuvrageDescriptionById(ouvrageId);
        description.addObject("ouvrage", ouvrageDescriptionDto);
        description.addObject(ERROR_MESSAGE, errorMessage);

        return description;
    }

    @GetMapping("/reservation/creer")
    public RedirectView createReservationForUser(@RequestParam(value = "ouvrage_id") int ouvrageId, RedirectAttributes redirectAttributes) {
        UtilisateurDto utilisateurDto = (UtilisateurDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        RedirectView redirectView = null;
        try {
            reservationProxy.createNewReservation(utilisateurDto.getUtilisateurId(), ouvrageId);
            redirectView = new RedirectView("/reservation");
        } catch (FeignException e) {
            redirectView = new RedirectView("/ouvrage/description");
            redirectView.addStaticAttribute("id", ouvrageId);
            redirectAttributes.addFlashAttribute(ERROR_MESSAGE, e.getMessage());
        }

        return redirectView;
    }

}
