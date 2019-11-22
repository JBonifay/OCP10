package com.openclassrooms.reservation.controller;

import com.openclassrooms.reservation.dto.ReservationMapper;
import com.openclassrooms.reservation.exception.ReservationIntrouvable;
import com.openclassrooms.reservation.service.ReservationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;
    private final ReservationMapper  reservationMapper;


    @GetMapping(value = "/reservation/{id}")
    private ResponseEntity getReservationByUtilisateurId(@PathVariable int id) throws ReservationIntrouvable {
        return ResponseEntity.ok(reservationService.findAllByUtilisateurId(id).map(reservationMapper::toReservationDto));
    }


}
