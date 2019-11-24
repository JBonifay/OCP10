package com.openclassrooms.reservation.controller;

import com.openclassrooms.reservation.dto.ReservationDto;
import com.openclassrooms.reservation.dto.ReservationMapper;
import com.openclassrooms.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.reservation.exception.ReservationIntrouvable;
import com.openclassrooms.reservation.model.Reservation;
import com.openclassrooms.reservation.service.ReservationService;
import java.util.ArrayList;
import java.util.List;
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


    @GetMapping(value = "/reservation/{reservationId}")
    private ResponseEntity<ReservationDto> getReservationById(@PathVariable int reservationId) {
        return ResponseEntity.ok(reservationMapper.toReservationDto(reservationService.findReservationById(
            reservationId)));
    }

    @GetMapping(value = "/reservation/utilisateur/{utilisateurId}")
    private ResponseEntity<List<ReservationOuvrageInfoDto>> getReservationByUtilisateurId(@PathVariable int utilisateurId) throws ReservationIntrouvable {
        List<Reservation>               reservationDtos = reservationService.findAllByUtilisateurId(utilisateurId);
        List<ReservationOuvrageInfoDto> dtos            = new ArrayList<>();
        reservationDtos.forEach(reservation -> dtos.add(reservationMapper.toReservationOuvrageInfoDto(reservation)));

        return ResponseEntity.ok(dtos);
    }
}
