package com.openclassrooms.bibliotheque.web.controller;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageReservationBean;
import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import com.openclassrooms.bibliotheque.web.service.ReservationService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RequiredArgsConstructor
@Controller
public class ReservationPageController {
    
    private final ReservationService reservationService;
    
    @GetMapping("/reservation")
    public ModelAndView getOuvragesPage() {
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
    
    @GetMapping("/reservation/prolonger/{reservationId}")
    public RedirectView prolongateReservation(@PathVariable int reservationId) {
        ResponseEntity prolongateResponse = reservationService.prolongateReservation(reservationId);
        
        return new RedirectView("/reservation");
    }
    
}
