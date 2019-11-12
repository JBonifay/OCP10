package com.openclassrooms.reservation.repository;

import com.openclassrooms.reservation.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

}
