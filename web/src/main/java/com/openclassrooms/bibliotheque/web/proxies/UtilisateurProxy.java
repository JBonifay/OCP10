package com.openclassrooms.bibliotheque.web.proxies;


import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import java.util.Optional;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/loaduser/{email}")
    Optional<UtilisateurBean> loadUserByEmail(@PathVariable String email);
}
