package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "utilisateur-proxy", url = "${feign.zuul.url}", path = "")
public interface UtilisateurProxy {

    @PostMapping("/authenticate")
    UtilisateurDto authenticateUser(@RequestParam String username, @RequestParam String password);

}
