package com.openclassrooms.bibliotheque.ouvrage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class OuvrageApplication {
    
    public static void main(String[] args) {
        SpringApplication.run(OuvrageApplication.class, args);
    }
    
}
