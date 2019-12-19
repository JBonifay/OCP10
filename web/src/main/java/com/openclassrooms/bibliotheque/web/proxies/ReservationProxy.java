package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(value = "microservice-reservation")
public interface ReservationProxy {
    
    @GetMapping("/reservation/reservations_pour_utilisateur_{utilisateurId}")
    ResponseEntity<List<ReservationBean>> getAllReservationListByUtilisateurId(@PathVariable int utilisateurId);
    
    @GetMapping("/reservation/prolonger_reservation_{reservationId}")
    ResponseEntity prolongateReservation(@PathVariable int reservationId);
    
}

