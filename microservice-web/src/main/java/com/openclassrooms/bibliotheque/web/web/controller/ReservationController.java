package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageIdNameDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageReservationDto;
import com.openclassrooms.bibliotheque.web.dto.reservation.ReservationDto;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import com.openclassrooms.bibliotheque.web.service.ReservationService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.Nullable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@Slf4j
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;
    private final ReservationProxy   reservationProxy;
    private final OuvrageProxy       ouvrageProxy;

    /**
     * Return reservation of current user
     *
     * @return a page with reservations for current user
     */
    @GetMapping("/reservation")
    public ModelAndView getReservationPage() {
        ModelAndView reservation = new ModelAndView("reservation");

        UtilisateurDto utilisateurDto = (UtilisateurDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        List<ReservationDto> reservationDtoList = reservationProxy
                .getAllReservationListByUtilisateurId(utilisateurDto.getUtilisateurId());

        List<Integer> ouvrageIdList = reservationDtoList.stream().map(ReservationDto::getOuvrageId)
                .collect(Collectors.toList());

        List<OuvrageIdNameDto> ouvrageIdNameDtoList = ouvrageProxy.getAllOuvrageByOuvrageIdList(ouvrageIdList);

        List<OuvrageReservationDto> ouvrageReservationDtoList = reservationService
                .createOuvrageReservationDto(reservationDtoList, ouvrageIdNameDtoList);

        reservation.addObject("reservationList", ouvrageReservationDtoList);

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
        reservationProxy.prolongateReservation(reservationId);
        return new RedirectView("/reservation");
    }

}
