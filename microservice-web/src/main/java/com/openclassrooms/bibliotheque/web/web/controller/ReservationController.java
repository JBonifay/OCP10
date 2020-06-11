package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.service.ReservationService;
import feign.FeignException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@Slf4j
@RequiredArgsConstructor
public class ReservationController {

    private static final String             ERROR_MESSAGE = "errorMessage";
    private final        ReservationService reservationService;

    /**
     * Return reservation of current user
     *
     * @return a page with reservations for current user
     */
    @GetMapping("/reservation")
    public ModelAndView getReservationPage(@ModelAttribute("errorMessage") String errorMessage) {
        ModelAndView reservation = new ModelAndView("reservation");

        UtilisateurDto utilisateurDto = (UtilisateurDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        reservationService.getReservationForUser(reservation, utilisateurDto);

        reservation.addObject(ERROR_MESSAGE, errorMessage);

        return reservation;
    }

    /**
     * Extend reservation date
     *
     * @param reservationId the reservation to extend
     * @return reservation page
     */
    @GetMapping("/reservation/prolonger/{reservationId}")
    public RedirectView extendReservation(@PathVariable int reservationId, RedirectAttributes redirectAttributes) {
        try {
            reservationService.prolongateReservation(reservationId);
        } catch (FeignException e) {
            redirectAttributes.addFlashAttribute(ERROR_MESSAGE, e.getMessage());
        }
        return new RedirectView("/reservation");
    }

    @GetMapping("/reservation/enattente/annuler")
    public RedirectView annulerListeAttente(@RequestParam int listeAttenteId) {
        reservationService.annulerListeAttente(listeAttenteId);
        return new RedirectView("/reservation");
    }

}
