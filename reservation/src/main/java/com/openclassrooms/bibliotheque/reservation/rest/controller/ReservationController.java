package com.openclassrooms.bibliotheque.reservation.rest.controller;

import com.openclassrooms.bibliotheque.reservation.dto.ReservationMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.rest.exception.AlreadyExtendedException;
import com.openclassrooms.bibliotheque.reservation.rest.exception.ReservationIntrouvableException;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

@Controller
@RequiredArgsConstructor
public class ReservationController {
    
    private final ReservationService reservationService;
    private final ReservationMapper  reservationMapper;
    
    /**
     * Get all reservatino from user
     *
     * @param utilisateurId the user id
     * @return a response entity containing a list of {@link ReservationOuvrageInfoDto} object
     */
    @GetMapping(value = "/reservation/reservations_pour_utilisateur_{utilisateurId}")
    private ResponseEntity<List<ReservationOuvrageInfoDto>> getReservationByUtilisateurId(@PathVariable int utilisateurId) {
        
        List<Reservation> reservationDtos = reservationService.findAllByUtilisateurId(utilisateurId);
        if (reservationDtos.isEmpty()) {
            throw new ReservationIntrouvableException("Aucune réservation trouvée pour cet utilisateur");
        }
        return ResponseEntity
                .ok(reservationDtos.stream().map(reservationMapper::toReservationOuvrageInfoDto).collect(Collectors.toList()));
    }
    
    /**
     * Extend the date of a reservation fixed to 4 weeks more
     *
     * @param reservationId the reservation id
     * @return a response entity, Ok if extended
     */
    @PutMapping(value = "/reservation/prolonger_reservation_{reservationId}")
    public ResponseEntity<String> extendReservation(@PathVariable int reservationId) {
        boolean extended = reservationService.extendReservation(reservationId);
        if (!extended) {
            throw new AlreadyExtendedException("La réservation à déjà été prolongée !");
        }
        return ResponseEntity.ok("Prolongement effectué..");
    }
    
    /**
     * Create a new reservation for specified user
     *
     * @param utilisateurId the user who reserve a book
     * @return ResponseEntity
     */
    @PostMapping("/reservation/creer_nouvelle_reservation_pour_utilisateur_{utilisateurId}_ouvrage_{ouvrageId}")
    public ResponseEntity createReservation(@PathVariable int utilisateurId, @PathVariable int ouvrageId) {
        Reservation reservation = reservationService.createNewReservationForUser(ouvrageId, utilisateurId);
        return new ResponseEntity(reservation, HttpStatus.CREATED);
    }
    
    @PutMapping("reservation/rendre_ouvrage_{reservationId}")
    public ResponseEntity returnLoan(@PathVariable int reservationId) {
        Reservation reservation = reservationService.returnReservation(reservationId);
        return ResponseEntity.ok("Reservation terminé");
    }
    
}
