package com.openclassrooms.bibliotheque.reservation.proxies;

import org.springframework.cloud.openfeign.FeignClient;

@FeignClient("microservice-utilisateur")
public class UtilisateurProxy {
    
}
