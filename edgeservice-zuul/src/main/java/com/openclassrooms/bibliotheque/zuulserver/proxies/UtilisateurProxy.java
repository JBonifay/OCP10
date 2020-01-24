package com.openclassrooms.bibliotheque.zuulserver.proxies;

import com.openclassrooms.bibliotheque.zuulserver.config.jwt.dto.UtilisateurDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/{email}")
    UtilisateurDto findUtilisateurByEmailIgnoreCase(@PathVariable String email);
}
