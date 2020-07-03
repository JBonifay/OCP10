package com.openclassrooms.bibliotheque.reservation.rest;

import com.openclassrooms.bibliotheque.reservation.dto.ListeAttenteDto;
import com.openclassrooms.bibliotheque.reservation.dto.ListeAttenteMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationMapper;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.bibliotheque.reservation.error.ListeAttenteException;
import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@Slf4j
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
                .filter(reservationList -> !reservationList.isEmpty())
                .map(reservations -> ResponseEntity.ok(reservations.stream()
                                                               .map(reservationMapper::toReservationOuvrageInfoDto)
                                                               .collect(Collectors.toList())))
                .orElse(ResponseEntity.ok(Collections.emptyList()));
    }

    @GetMapping("/reservation/listeattente/{utilisateurId}")
    public ResponseEntity<List<ListeAttenteDto>> getListeAttenteByUtilisateurId(@PathVariable int utilisateurId)
            throws ListeAttenteException {
        return ResponseEntity.ok(reservationService.findAllListeAttenteByUtilisateurId(utilisateurId)
                                         .stream()
                                         .map(listeAttente -> {
                                             ListeAttenteDto listeAttenteDto = listeAttenteMapper.toReservationOuvrageInfoDto(
                                                     listeAttente);
                                             listeAttenteDto.setOuvrageName(ouvrageProxy.getOuvrageById(listeAttente.getOuvrageId())
                                                                                    .getName());
                                             listeAttenteDto.setProchaineDateRetour(reservationService.getNextReturnDate(
                                                     listeAttente.getOuvrageId()));
                                             return listeAttenteDto;
                                         })
                                         .collect(Collectors.toList()));
    }

    @GetMapping("/reservation/listeattente/annuler")
    public ResponseEntity<String> annulerListeAttente(@RequestParam int listeAttenteId) {
        reservationService.annulerReservationListeAttente(listeAttenteId);
        return ResponseEntity.ok("Reservation annulée");
    }

    @GetMapping("/reservation/listeattente/info/nextreturndate")
    public ResponseEntity<Date> getNextReturnDateForOuvrageId(@RequestParam int ouvrageId) {
        return ResponseEntity.ok(reservationService.getNextReturnDate(ouvrageId));
    }

    @GetMapping("/reservation/listeattente/info/numberofuserwaiting")
    public ResponseEntity<Number> getNumberOfUserWaitingForOuvrageId(@RequestParam int ouvrageId) {
        return ResponseEntity.ok(reservationService.getNumberOfUserForOuvrageId(ouvrageId));
    }

    @GetMapping("/reservation/listeattente/info/numberofactivereservation")
    public ResponseEntity<Number> getNumberOfActiveReservationForOuvrageId(@RequestParam int ouvrageId) {
        return ResponseEntity.ok(reservationService.getNumberOfActiveReservationForOuvrageId(ouvrageId));
    }

    /**
     * Extend the date of a reservation fixed to 4 weeks more
     *
     * @param reservationId the reservation id
     * @return a response entity, Ok if extended
     */
    @PutMapping("/reservation/prolonger/{reservationId}")
    public ResponseEntity<String> extendReservation(@PathVariable int reservationId) {
        reservationService.extendReservation(reservationId);
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
        return ResponseEntity.ok(reservationService.createNewReservationForUser(ouvrageId, utilisateurId));
    }

    /**
     * Create a new liste attente for specified user
     *
     * @param utilisateurId the user who reserve a book
     * @return ResponseEntity
     */
    @PostMapping("/reservation/listeattente/creer")
    public ResponseEntity<ListeAttente> createListeAttente(@RequestParam int utilisateurId, @RequestParam int ouvrageId) {
        return ResponseEntity.ok(reservationService.createNewListeAttenteForUser(ouvrageId, utilisateurId));
    }

    /**
     * Return a loan
     *
     * @param reservationId the reservation to return
     * @return ResponseEntity ok if returned
     */
    @PutMapping("reservation/retourner/{reservationId}")
    public ResponseEntity<Reservation> returnReservation(@PathVariable int reservationId) {
        return ResponseEntity.ok(reservationService.returnReservation(reservationId));
    }

}
