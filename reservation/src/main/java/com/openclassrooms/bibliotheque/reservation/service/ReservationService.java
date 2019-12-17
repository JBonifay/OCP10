package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {
    
    private final ReservationRepository reservationRepository;
    
    public List<Reservation> findAllByUtilisateurId(int id) {
        return reservationRepository.findAllByUtilisateurId(id);
    }
    
    public Reservation findReservationById(int reservationId) throws NotFoundException {
        return Optional.of(reservationRepository.getOne(reservationId)).orElseThrow(NotFoundException::new);
    }
    
    @SneakyThrows
    public void prolongateReservation(int reservationId) {
        Reservation reservation = findReservationById(reservationId);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(reservation.getReservationDateFin());
        calendar.add(Calendar.WEEK_OF_MONTH, 4);
        reservation.setReservationDateFin(calendar.getTime());
        reservationRepository.save(reservation);
    }
    
}
