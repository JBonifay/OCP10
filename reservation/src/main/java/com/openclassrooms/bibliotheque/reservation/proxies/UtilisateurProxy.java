package com.openclassrooms.bibliotheque.reservation.proxies;

import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {
    
}
