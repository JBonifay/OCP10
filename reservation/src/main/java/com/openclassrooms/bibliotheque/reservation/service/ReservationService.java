package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import java.util.Calendar;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationRepository reservationRepository;


    public List<Reservation> findAllByUtilisateurId(int id) {
        return reservationRepository.findAllByUtilisateurId(id);
    }

    public Reservation findReservationById(int reservationId) {
        return reservationRepository.findByReservationId(reservationId);
    }
    
    public void prolongateReservation(int reservationId) {
        Reservation reservation = reservationRepository.findByReservationId(reservationId);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(reservation.getReservationDateFin());
        calendar.add(Calendar.WEEK_OF_MONTH, 4);
        reservation.setReservationDateFin(calendar.getTime());
        
        reservationRepository.save(reservation);
    }
    
}
