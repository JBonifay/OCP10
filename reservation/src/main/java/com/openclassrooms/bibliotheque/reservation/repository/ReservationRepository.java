package com.openclassrooms.bibliotheque.reservation.repository;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

    List<Reservation> findAllByUtilisateurId(int id);

    Reservation findByReservationId(int reservationId);

}