package com.openclassrooms.bibliotheque.zuulserver.security;

import lombok.Data;
import org.springframework.context.annotation.Configuration;

@Data
@Configuration
public class JwtProperties {

    private String secretKey    = "secret";
    private long   validityInMs = 3600000; // 1h

}