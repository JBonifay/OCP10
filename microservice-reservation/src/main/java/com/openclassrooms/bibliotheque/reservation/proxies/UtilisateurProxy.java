package com.openclassrooms.bibliotheque.reservation.proxies;

import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur")
    UtilisateurDto findUtilisateurById(@RequestParam String utilisateurId);

}
