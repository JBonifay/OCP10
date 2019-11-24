package com.openclassrooms.reservation.service;

import com.openclassrooms.reservation.model.Reservation;
import com.openclassrooms.reservation.repository.ReservationRepository;
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

}
