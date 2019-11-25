package com.openclassrooms.bibliotheque.web.controller;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import com.openclassrooms.bibliotheque.web.dto.OuvrageReservationDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Controller
public class ReservationPageController {

    private final ReservationProxy reservationProxy;
    private final OuvrageProxy     ouvrageProxy;

    @GetMapping("/reservation")
    public ModelAndView getOuvragesPage() {
        ModelAndView reservation = new ModelAndView("reservation");

        int utilisateurId = 1;

        List<ReservationBean> reservationBeanList = reservationProxy.getAllReservationListByUtilisateurId(utilisateurId);

        List<OuvrageReservationDto> ouvrageReservationDtoList = new ArrayList<>();

        reservationBeanList.forEach(reservationBean -> {
            OuvrageIdNameBean ouvrageIdNameBean = ouvrageProxy.getOuvrageIdNameBean(reservationBean.getOuvrageId());

            ouvrageProxy.getAllOuvrageByReservationList(reservationBeanList);

            // Full it
            ouvrageReservationDtoList.add(new OuvrageReservationDto());

        });


        return reservation;
    }
}