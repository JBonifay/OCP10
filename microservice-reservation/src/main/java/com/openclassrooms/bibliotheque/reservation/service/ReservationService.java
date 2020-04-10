package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ListeAttenteRepository;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import com.openclassrooms.bibliotheque.reservation.rest.exception.ReservationException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReservationService {

    private final ReservationRepository  reservationRepository;
    private final ListeAttenteRepository listeAttenteRepository;
    private final OuvrageProxy           ouvrageProxy;

    /**
     * List all reservation fo the user
     *
     * @param utilisateurId the user userId
     * @return a list of reservation
     */
    public List<Reservation> findAllReservationByUtilisateurId(int utilisateurId) {
        return reservationRepository.findAllByUtilisateurId(utilisateurId);
    }

    public List<ListeAttente> findAllListeAttenteByUtilisateurId(int utilisateurId) {
        return listeAttenteRepository.findAllByUtilisateurId(utilisateurId);
    }

    /**
     * Extend the reservation to 4 weeks more
     *
     * @param reservationId the reservation to extend
     * @return the reservation
     */
    public Reservation extendReservation(int reservationId) {
        return Optional.of(reservationRepository.getOne(reservationId))// Check if isDejaProlonge
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
    @Transactional
    public Reservation createNewReservationForUser(int ouvrageId, int utilisateurId) {
        checkIfAlreadyInUserReservationList(ouvrageId, utilisateurId);
        checkOuvrageStockAndRemoveOneItem(ouvrageId);

        Reservation reservation = new Reservation();
        reservation.setUtilisateurId(utilisateurId);
        reservation.setOuvrageId(ouvrageId);
        reservation.setReservationDateDebut(new Date());
        reservation.setReservationDateFin(addFourWeeksToDate(reservation.getReservationDateDebut()));
        reservation.setActive(true);

        return reservationRepository.save(reservation);
    }

    private void checkOuvrageStockAndRemoveOneItem(int ouvrageId) {
        try {
            ouvrageProxy.removeOneStockItem(ouvrageId);
        } catch (Exception e) {
            throw new ReservationException("L'ouvrage n'est plus en stock !");
        }
    }

    /**
     * Used to check if user have the ouvrage in his reservation list
     *
     * @param ouvrageId     the ouvrage id
     * @param utilisateurId the utilisateur id
     */
    private void checkIfAlreadyInUserReservationList(int ouvrageId, int utilisateurId) {
        reservationRepository.findAllByUtilisateurId(utilisateurId).stream()
                .filter(reservation -> reservation.getOuvrageId() == ouvrageId).forEach(reservation -> {
            throw new ReservationException("La réservation est déjà présente dans la liste de reservations de l'utilisateur.");
        });
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
