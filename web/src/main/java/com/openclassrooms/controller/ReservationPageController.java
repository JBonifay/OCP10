package com.openclassrooms.controller;

import com.openclassrooms.proxies.ReservationProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class ReservationPageController {

    private final ReservationProxy reservationProxy;

    @GetMapping("/reservation")
    public ModelAndView getOuvragesPage(Pageable pageable) {
        ModelAndView ouvrages = new ModelAndView("reservation");




        return ouvrages;
    }
}