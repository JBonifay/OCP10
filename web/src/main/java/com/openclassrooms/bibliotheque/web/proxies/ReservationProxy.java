package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(contextId = "ReservationProxy", value = "zuul-server")
public interface ReservationProxy {


    @GetMapping("/reservation/utilisateur/{utilisateurId}")
    ResponseEntity<List<ReservationBean>> getAllReservationListByUtilisateurId(@PathVariable int utilisateurId);


}

