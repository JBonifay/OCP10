package com.openclassrooms.bibliotheque.zuulserver.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JwtTokenController {

    @GetMapping("/jwt/token/validate")
    public String isJwtValid(){
        return "Token is valid";
    }

}
