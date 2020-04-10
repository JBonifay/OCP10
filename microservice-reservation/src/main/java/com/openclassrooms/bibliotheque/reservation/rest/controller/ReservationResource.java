package com.openclassrooms.bibliotheque.reservation.rest.controller;

import com.openclassrooms.bibliotheque.reservation.dto.ListeAttenteDto;
import com.openclassrooms.bibliotheque.reservation.dto.ListeAttenteMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
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
public class ReservationResource {

    private final ReservationService reservationService;
    private final ReservationMapper  reservationMapper;
    private final ListeAttenteMapper listeAttenteMapper;
    private final OuvrageProxy       ouvrageProxy;

    /**
     * Get all reservations from user
     *
     * @param utilisateurId the user id
     * @return a response entity containing a list of {@link ReservationOuvrageInfoDto} object
     */
    @GetMapping("/reservation/list/{utilisateurId}")
    public ResponseEntity<List<ReservationOuvrageInfoDto>> getReservationsByUtilisateurId(@PathVariable int utilisateurId) {
        return Optional.of(reservationService.findAllReservationByUtilisateurId(utilisateurId))
                .filter(reservationList -> !reservationList.isEmpty()).map(reservations -> ResponseEntity
                        .ok(reservations.stream().map(reservationMapper::toReservationOuvrageInfoDto)
                                .collect(Collectors.toList()))).orElseThrow(
                        () -> new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Aucune réservation trouvée pour cet utilisateur"));
    }

    @GetMapping("/reservation/listeattente/{utilisateurId}")
    public ResponseEntity<List<ListeAttenteDto>> getListeAttenteByUtilisateurId(@PathVariable int utilisateurId) {
        return ResponseEntity
                .ok(reservationService.findAllListeAttenteByUtilisateurId(utilisateurId).stream().map(listeAttente -> {
                    ListeAttenteDto listeAttenteDto = listeAttenteMapper.toReservationOuvrageInfoDto(listeAttente);
                    listeAttenteDto.setOuvrageName(ouvrageProxy.getOuvrageById(listeAttente.getOuvrageId()).getName());
                    return listeAttenteDto;
                }).collect(Collectors.toList()));
    }

    /**
     * Extend the date of a reservation fixed to 4 weeks more
     *
     * @param reservationId the reservation id
     * @return a response entity, Ok if extended
     */
    @PutMapping("/reservation/prolonger/{reservationId}")
    public ResponseEntity<String> extendReservation(@PathVariable int reservationId) {
        return Optional.ofNullable(reservationService.extendReservation(reservationId))
                .map(i -> ResponseEntity.ok("Prolongement effectué.."))
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.CONFLICT, "Impossible de prolonger la réservation"));
    }

    /**
     * Create a new reservation for specified user
     *
     * @param utilisateurId the user who reserve a book
     * @return ResponseEntity
     */
    @PostMapping("/reservation/creer")
    public ResponseEntity<Reservation> createReservation(@RequestParam int utilisateurId, @RequestParam int ouvrageId) {
        return ResponseEntity.ok(reservationService.createNewReservationForUser(ouvrageId, utilisateurId));
    }

    /**
     * Return a loan
     *
     * @param reservationId the reservation to return
     * @return ResponseEntity ok if returned
     */
    @PutMapping("reservation/retourner/{reservationId}")
    public ResponseEntity<Reservation> returnLoan(@PathVariable int reservationId) {
        return Optional.ofNullable(reservationService.returnReservation(reservationId))
                .map(ResponseEntity::ok)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.CONFLICT, "La réservation à déjà était retournée"));
    }

}
