package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.dto.reservation.ReservationDto;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "reservation-proxy", url = "${feign.zuul.url}", path = "/microservice-reservation")
public interface ReservationProxy {
    
    @GetMapping("/reservation/list/{utilisateurId}")
    List<ReservationDto> getAllReservationListByUtilisateurId(@PathVariable int utilisateurId);
    
    @PutMapping("/reservation/prolonger/{reservationId}")
    void prolongateReservation(@PathVariable int reservationId);

    @PostMapping("/reservation/creer")
    void createNewReservation(@RequestParam int utilisateurId, @RequestParam int ouvrageId);
}

