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

    public List<Reservation> getAllReservation() {
        return reservationRepository.findAll();
    }

}
