package com.openclassrooms.bibliotheque.reservation.rest;

import com.openclassrooms.bibliotheque.reservation.dto.ReservationMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;
    private final ReservationMapper  reservationMapper;

    /**
     * Get all reservations from user
     *
     * @param utilisateurId the user id
     * @return a response entity containing a list of {@link ReservationOuvrageInfoDto} object
     */
    @GetMapping("/reservations/{utilisateurId}")
    public ResponseEntity<List<ReservationOuvrageInfoDto>> getReservationsByUtilisateurId(@PathVariable int utilisateurId) {
        List<Reservation> reservationDtos = reservationService.findAllByUtilisateurId(utilisateurId);
        if (reservationDtos.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Aucune réservation trouvée pour cet utilisateur");
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
    @PutMapping("/reservation/{reservationId}/prolonger")
    public ResponseEntity<String> extendReservation(@PathVariable int reservationId) {
        try {
            Reservation reservation = reservationService.extendReservation(reservationId);
            if (reservation == null) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Impossible de ralonger la réservation");
            }
        } catch (NotFoundException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "", e);
        }
        return ResponseEntity.ok("Prolongement effectué..");
    }

    /**
     * Create a new reservation for specified user
     *
     * @param utilisateurId the user who reserve a book
     * @return ResponseEntity
     */
    @PostMapping("/reservation/creer")
    public ResponseEntity<Reservation> createReservation(@RequestParam int utilisateurId, @RequestParam int ouvrageId) {
        Reservation reservation = reservationService.createNewReservationForUser(ouvrageId, utilisateurId);
        if (reservation == null) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Erreur lors de la création de la réservation");
        }
        return new ResponseEntity<>(reservation, HttpStatus.CREATED);
    }

    /**
     * Return a loan
     *
     * @param reservationId the reservation to return
     * @return ResponseEntity ok if returned
     */
    @PutMapping("reservation/{reservationId}/retourner")
    public ResponseEntity<String> returnLoan(@PathVariable int reservationId) {
        Reservation reservation = reservationService.returnReservation(reservationId);
        if (reservation == null) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "La réservation à déjà était retournée");
        }
        return ResponseEntity.ok("Reservation terminé");
    }

}