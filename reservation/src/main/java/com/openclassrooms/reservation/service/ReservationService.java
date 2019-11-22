package com.openclassrooms.reservation.service;

import com.openclassrooms.reservation.model.Reservation;
import com.openclassrooms.reservation.repository.ReservationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationRepository reservationRepository;


    public Page<Reservation> findAllByUtilisateurId(int id) {
        return reservationRepository.findAllByIdUtilisateur(id);
    }

}
