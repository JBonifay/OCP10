package com.openclassrooms.bibliotheque.zuulserver.proxies;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "utilisateur-proxy", url = "${feign.zuul.url}", path = "/microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/{email}")
    UserDetails findUtilisateurByEmailIgnoreCase(@PathVariable String email);
}
