package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.beans.OuvrageBean;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import com.openclassrooms.bibliotheque.reservation.rest.exception.NoStockException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {
    
    private final ReservationRepository reservationRepository;
    private final OuvrageProxy          ouvrageProxy;
    private final UtilisateurProxy      utilisateurProxy;
    
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
     * @throws NotFoundException
     */
    public Reservation findReservationById(int reservationId) throws NotFoundException {
        return Optional.of(reservationRepository.getOne(reservationId)).orElseThrow(NotFoundException::new);
    }
    
    /**
     * Extend the reservation to 4 weeks more
     *
     * @param reservationId the reservation to extend
     * @return boolean if extend was done
     */
    @SneakyThrows
    public boolean extendReservation(int reservationId) {
        Reservation reservation = findReservationById(reservationId);
        if (reservation.isDejaProlonge()) {
            return false;
        }
        reservation.setReservationDateFin(addFourWeeksToDate(reservation.getReservationDateFin()));
        reservation.setDejaProlonge(true);
        
        reservationRepository.save(reservation);
        return true;
    }
    
    /**
     * Create a new reservation for a user
     *
     * @param ouvrageId     the ouvrage to reserve
     * @param utilisateurId the user who reserve
     * @Return the created reservation
     */
    public Reservation createNewReservationForUser(int ouvrageId, int utilisateurId) {
        ResponseEntity<OuvrageBean> responseEntity = ouvrageProxy.getOuvrageById(ouvrageId);
    
        OuvrageBean ouvrageBean = responseEntity.getBody();
        
        if (ouvrageBean.getQuantity() < 1) {
            throw new NoStockException("L'ouvrage demandé n'est plus en stock.");
        }
    
        Reservation reservation = new Reservation();
        reservation.setUtilisateurId(utilisateurId);
        reservation.setOuvrageId(ouvrageId);
        reservation.setReservationDateDebut(new Date());
        reservation.setReservationDateFin(addFourWeeksToDate(reservation.getReservationDateDebut()));
        reservation.setActive(true);
        
        reservation = reservationRepository.save(reservation);
    
        ouvrageProxy.removeOneStockItem(ouvrageBean.getQuantity());
        
        return reservation;
    }
    
    /**
     * Return a loan of a reservation
     * @param reservationId the reservation
     * @return the reservation
     */
    public Reservation returnReservation(int reservationId) {
        Reservation reservation = reservationRepository.getOne(reservationId);
        reservation.setActive(false);
        return reservationRepository.save(reservation);
    }
    
    /**
     * Take a date in input and add 4 weeks to it
     *
     * @param date the date used as reference
     * @return the new date (4 weeks more than input)
     */
    private Date addFourWeeksToDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.WEEK_OF_MONTH, 4);
        return calendar.getTime();
    }
    
}
