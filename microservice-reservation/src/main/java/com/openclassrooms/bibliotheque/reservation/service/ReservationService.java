package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationRepository reservationRepository;
    private final OuvrageProxy          ouvrageProxy;

    /**
     * List all reservation fo the user
     *
     * @param userId the user userId
     * @return a list of reservation
     */
    public List<Reservation> findAllByUtilisateurId(int userId) {
        return reservationRepository.findAllByUtilisateurId(userId);
    }

    /**
     * Find a reservation by its ID
     *
     * @param reservationId the reservation id
     * @return the reservation
     */
    public Reservation findReservationById(int reservationId) throws NotFoundException {
        return Optional.of(reservationRepository.getOne(reservationId)).orElseThrow(NotFoundException::new);
    }

    /**
     * Extend the reservation to 4 weeks more
     *
     * @param reservationId the reservation to extend
     * @return the reservation
     */
    public Reservation extendReservation(int reservationId) throws NotFoundException {
        Reservation reservation = findReservationById(reservationId);
        if (reservation.isDejaProlonge()) {
            return null;
        }
        reservation.setReservationDateFin(addFourWeeksToDate(reservation.getReservationDateFin()));
        reservation.setDejaProlonge(true);

        return reservationRepository.save(reservation);
    }

    /**
     * Create a new reservation for a user
     *
     * @param ouvrageId     the ouvrage to reserve
     * @param utilisateurId the user who reserve
     * @Return the created reservation
     */
    public Reservation createNewReservationForUser(int ouvrageId, int utilisateurId) {
        List<Reservation> reservationList = reservationRepository.findAllByUtilisateurId(utilisateurId);

        Reservation nouvelleReservation = reservationList.stream().filter(reservation -> reservation.getOuvrageId() == ouvrageId)
                .findAny().orElse(null);

        if (nouvelleReservation != null) {
            return null;
        }

        Reservation reservation = new Reservation();
        reservation.setUtilisateurId(utilisateurId);
        reservation.setOuvrageId(ouvrageId);
        reservation.setReservationDateDebut(new Date());
        reservation.setReservationDateFin(addFourWeeksToDate(reservation.getReservationDateDebut()));
        reservation.setActive(true);

        ResponseEntity<String> responseEntity;

        try {
            responseEntity = ouvrageProxy.removeOneStockItem(ouvrageId);
        } catch (Exception e) {
            return null;
        }

        if (responseEntity.getStatusCode().value() == 200) {
            reservation = reservationRepository.save(reservation);
            return reservation;
        } else {
            return null;
        }
    }

    /**
     * Return a loan of a reservation
     *
     * @param reservationId the reservation
     * @return the reservation
     */
    public Reservation returnReservation(int reservationId) {
        Reservation reservation = reservationRepository.getOne(reservationId);
        if (reservation.isActive()) {
            reservation.setActive(false);
            return reservationRepository.save(reservation);
        } else {
            return null;
        }
    }

    /**
     * Add 4 weeks to a Date
     *
     * @param date Date used as reference
     * @return the new date (4 weeks more than input)
     */
    private Date addFourWeeksToDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.WEEK_OF_MONTH, 4);
        return calendar.getTime();
    }

}
