package com.openclassrooms.ouvrage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.ribbon.RibbonClient;

@SpringBootApplication
@EnableDiscoveryClient
@RibbonClient("microservice-ouvrage")
public class OuvrageApplication {

    public static void main(String[] args) {
        SpringApplication.run(OuvrageApplication.class, args);
    }

}
