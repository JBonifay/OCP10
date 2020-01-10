package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import java.util.Optional;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "utilisateur-proxy", url = "http://localhost:9103")
public interface UtilisateurProxy {

    @PostMapping("/authenticate")
    Optional<UtilisateurBean> authenticateUser(@RequestParam String username, @RequestParam String password);

}
