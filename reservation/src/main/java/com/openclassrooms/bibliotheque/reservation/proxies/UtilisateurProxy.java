package com.openclassrooms.bibliotheque.reservation.proxies;

import com.openclassrooms.bibliotheque.reservation.beans.UtilisateurBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "utilisateur-proxy", url = "http://localhost:9103")
public interface UtilisateurProxy {

    @GetMapping("/utilisateur/{utilisateurId}")
    ResponseEntity<UtilisateurBean> findUtilisateurById(@PathVariable String utilisateurId);

}
