package com.openclassrooms.bibliotheque.reservation.controller;

import com.openclassrooms.bibliotheque.reservation.dto.ReservationMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.bibliotheque.reservation.exception.ReservationIntrouvable;
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
    
    @GetMapping(value = "/reservation/utilisateur/{utilisateurId}")
    private ResponseEntity<List<ReservationOuvrageInfoDto>> getReservationByUtilisateurId(@PathVariable int utilisateurId)
            throws ReservationIntrouvable {
        List<Reservation> reservationDtos = reservationService.findAllByUtilisateurId(utilisateurId);
        return ResponseEntity
                .ok(reservationDtos.stream().map(reservationMapper::toReservationOuvrageInfoDto).collect(Collectors.toList()));
    }
    
    @GetMapping(value = "/reservation/prolonger/{reservationId}")
    public ResponseEntity<String> prolongateReservation(@PathVariable int reservationId) {
        reservationService.prolongateReservation(reservationId);
        return ResponseEntity.ok("created");
    }
    
}
