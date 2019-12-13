package com.openclassrooms.bibliotheque.zuulserver.security;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class JwtToken {

    private String idToken;

}
