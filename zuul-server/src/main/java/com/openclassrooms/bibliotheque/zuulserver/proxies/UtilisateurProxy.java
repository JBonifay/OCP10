package com.openclassrooms.bibliotheque.zuulserver.proxies;

import com.openclassrooms.bibliotheque.zuulserver.config.jwt.bean.UtilisateurBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/{email}")
    UtilisateurBean findUtilisateurByEmailIgnoreCase(@PathVariable String email);
}
