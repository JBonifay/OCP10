package com.openclassrooms.reservation.repository;

import com.openclassrooms.reservation.model.Reservation;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

    List<Reservation> findAllByUtilisateurId(int id);

    Reservation findFirstByUtilisateurId(int id);

}
