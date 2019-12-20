package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "reservation-proxy", url = "http://localhost:9103", path = "/microservice-reservation")
public interface ReservationProxy {
    
    @GetMapping("/reservations/{utilisateurId}")
    ResponseEntity<List<ReservationBean>> getAllReservationListByUtilisateurId(@PathVariable int utilisateurId);
    
    @GetMapping("/reservation/{reservationId}/prolonger")
    ResponseEntity prolongateReservation(@PathVariable int reservationId);
    
}

