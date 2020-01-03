package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageReservationBean;
import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.web.service.ReservationService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
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
    private final UtilisateurProxy   utilisateurProxy;

    /**
     * Return reservation of current user
     *
     * @return a webpage with reservations for current user
     */
    @GetMapping("/reservation")
    public ModelAndView getReservationPage() {
        ModelAndView reservation = new ModelAndView("reservation");

        UtilisateurBean utilisateurBean = (UtilisateurBean) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (utilisateurBean != null) {
            ResponseEntity<List<ReservationBean>> reservationBeanResponseEntity = reservationService
                    .getAllReservationListByUtilisateurId(utilisateurBean.getUtilisateurId());
            if (reservationBeanResponseEntity.getStatusCode().is2xxSuccessful()
                    && reservationBeanResponseEntity.getBody() != null) {
                List<Integer> ouvrageIdList = reservationBeanResponseEntity.getBody().stream().map(ReservationBean::getOuvrageId)
                        .collect(Collectors.toList());
                ResponseEntity<List<OuvrageIdNameBean>> ouvrageIdNameBeanResponseEntity = reservationService
                        .getAllOuvrageByOuvrageIdList(ouvrageIdList);
                if (ouvrageIdNameBeanResponseEntity.getStatusCode().is2xxSuccessful()
                        && ouvrageIdNameBeanResponseEntity.getBody() != null) {
                    List<OuvrageReservationBean> ouvrageReservationBeans = reservationService
                            .createOuvrageReservationBean(reservationBeanResponseEntity.getBody(),
                                    ouvrageIdNameBeanResponseEntity.getBody());
                    reservation.addObject("reservationList", ouvrageReservationBeans);
                }
            }
        }
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
        reservationService.prolongateReservation(reservationId);
        return new RedirectView("/reservation");
    }

}
