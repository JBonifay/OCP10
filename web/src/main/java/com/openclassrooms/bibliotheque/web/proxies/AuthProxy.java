package com.openclassrooms.bibliotheque.web.proxies;


import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpHeaders;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(value = "zuul-server")
public interface AuthProxy {

    @PostMapping("/auth/signin")
    String generateToken(@RequestBody UtilisateurBean authentication);
}
