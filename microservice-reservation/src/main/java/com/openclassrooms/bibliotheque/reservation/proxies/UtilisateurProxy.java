package com.openclassrooms.bibliotheque.reservation.proxies;

import com.openclassrooms.bibliotheque.reservation.beans.UtilisateurBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur")
    UtilisateurBean findUtilisateurById(@RequestParam String utilisateurId);

}
