package com.openclassrooms.bibliotheque.utilisateur;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.ribbon.RibbonClient;

@SpringBootApplication
@EnableDiscoveryClient
@RibbonClient("microservice-utilisateur")
public class UtilisateurApplication {

    public static void main(String[] args) {
        SpringApplication.run(UtilisateurApplication.class, args);
    }

}
