package com.openclassrooms.bibliotheque.reservation.controller;

import com.openclassrooms.bibliotheque.reservation.dto.ReservationDto;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.bibliotheque.reservation.exception.ReservationIntrouvable;
import com.openclassrooms.bibliotheque.reservation.exception.ReservationIntrouvableException;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import java.util.List;
import java.util.stream.Collectors;
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

        Reservation reservation = reservationService.findReservationById(reservationId);

        if (reservation == null) {
            throw new ReservationIntrouvableException("Reservation introuvable.");
        }

        return ResponseEntity.ok(reservationMapper.toReservationDto(reservationService.findReservationById(
            reservationId)));
    }

    @GetMapping(value = "/reservation/utilisateur/{utilisateurId}")
    private ResponseEntity<List<ReservationOuvrageInfoDto>> getReservationByUtilisateurId(@PathVariable int utilisateurId) throws ReservationIntrouvable {
        List<Reservation>               reservationDtos = reservationService.findAllByUtilisateurId(utilisateurId);

        return ResponseEntity.ok(reservationDtos.stream()
                                                .map(reservationMapper::toReservationOuvrageInfoDto)
                                                .collect(Collectors.toList()));

    }
}
