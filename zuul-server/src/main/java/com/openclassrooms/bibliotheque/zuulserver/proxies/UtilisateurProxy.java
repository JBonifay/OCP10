package com.openclassrooms.bibliotheque.zuulserver.proxies;

import com.openclassrooms.bibliotheque.zuulserver.bean.utilisateur.UtilisateurBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(value = "microservice-utilisateur")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/{email}")
    ResponseEntity<UtilisateurBean> findUtilisateurByEmail(@PathVariable String email);

}
