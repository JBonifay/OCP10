package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageReservationBean;
import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import com.openclassrooms.bibliotheque.web.service.ReservationService;
import feign.FeignException;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@Slf4j
@RequiredArgsConstructor
public class ReservationPageController {
    
    private final ReservationService reservationService;
    
    /**
     * Return reservation of current user
     *
     * @return a webpage with reservations for current user
     */
    @GetMapping("/reservation")
    public ModelAndView getReservationPage() {
        ModelAndView reservation = new ModelAndView("reservation");
        int utilisateurId = 1;
        ResponseEntity<List<ReservationBean>> reservationBeanResponseEntity = reservationService
                .getAllReservationListByUtilisateurId(utilisateurId);
        List<Integer> ouvrageIdList = reservationBeanResponseEntity.getBody().stream().map(ReservationBean::getOuvrageId)
                .collect(Collectors.toList());
        ResponseEntity<List<OuvrageIdNameBean>> ouvrageIdNameBeanResponseEntity = reservationService
                .getAllOuvrageByOuvrageIdList(ouvrageIdList);
        List<OuvrageReservationBean> ouvrageReservationBeans = reservationService
                .createOuvrageReservationBean(reservationBeanResponseEntity.getBody(), ouvrageIdNameBeanResponseEntity.getBody());
        reservation.addObject("reservationList", ouvrageReservationBeans);
        return reservation;
    }
    
    /**
     * Extend reservation date
     *
     * @param reservationId the reservation to extend
     * @return reservation page
     */
    @GetMapping("/reservation/prolonger/{reservationId}")
    public RedirectView extendReservation(@PathVariable int reservationId) {
        try {
            reservationService.prolongateReservation(reservationId);
        } catch (FeignException e) {
            log.error(e.getMessage());
        }
        return new RedirectView("/reservation");
    }
    
}
