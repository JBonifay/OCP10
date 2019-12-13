package com.openclassrooms.bibliotheque.web.proxies;


import com.openclassrooms.bibliotheque.web.beans.utilisateur.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/loaduser/{email}")
    Optional<User> loadUserByEmail(@PathVariable String email);
}
