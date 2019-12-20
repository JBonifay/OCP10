package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name = "auth-proxy", url = "http://localhost:9103", path = "/")
public interface AuthProxy {
    
    @PostMapping("/auth/signin")
    String generateToken(@RequestBody UtilisateurBean authentication);
    
}
