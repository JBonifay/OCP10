package com.openclassrooms.controller;

import com.openclassrooms.proxies.ReservationProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class ReservationPageController {

    private final ReservationProxy reservationProxy;

    @GetMapping("/reservation")
    public ModelAndView getOuvragesPage() {
        ModelAndView reservation = new ModelAndView("reservation");

        int utilisateurId = 1;

        reservationProxy.getAllReservationListByUtilisateurId(utilisateurId);

        return reservation;
    }
}