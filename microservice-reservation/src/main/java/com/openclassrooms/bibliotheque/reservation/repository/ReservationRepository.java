package com.openclassrooms.bibliotheque.reservation.repository;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {
    
    Optional<List<Reservation>> findAllByUtilisateurId(int id);

    List<Reservation> findAllByReservationDateFinBeforeAndActiveIsTrue(Date now);

    Optional<List<Reservation>> findAllByOuvrageId(int ouvrageId);

}
