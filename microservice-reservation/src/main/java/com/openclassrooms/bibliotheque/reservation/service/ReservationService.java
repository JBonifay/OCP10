package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
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
     * Extend the reservation to 4 weeks more
     *
     * @param reservationId the reservation to extend
     * @return the reservation
     */
    public Reservation extendReservation(int reservationId) {
        return Optional.of(reservationRepository.getOne(reservationId))
                // Check if isDejaProlonge
                .filter(reservation -> !reservation.isDejaProlonge())
                // Check date
                .filter(reservation -> !reservation.getReservationDateFin().before(new Date()))
                // Process
                .map(r -> {
                    r.setReservationDateFin(addFourWeeksToDate(r.getReservationDateFin()));
                    r.setDejaProlonge(true);
                    return reservationRepository.save(r);
                }).orElse(null);
    }

    /**
     * Create a new reservation for a user
     *
     * @param ouvrageId     the ouvrage to reserve
     * @param utilisateurId the user who reserve
     * @Return Null if reservation already exist or the new created reservation
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
        return reservationRepository.findById(reservationId).map(r -> {
            if (r.isActive()) {
                r.setActive(false);
                return reservationRepository.save(r);
            } else {
                return null;
            }
        }).orElse(null);
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
