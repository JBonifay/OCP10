package com.openclassrooms.bibliotheque.web.proxies;


import com.openclassrooms.bibliotheque.web.beans.utilisateur.UserBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@FeignClient(contextId = "UtilisateurProxy",value = "zuul-server")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/loaduser/{email}")
    Optional<UserBean> loadUserByEmail(@PathVariable String email);
}
