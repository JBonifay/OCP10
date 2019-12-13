package com.openclassrooms.bibliotheque.zuulserver.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuthenticationRequest {

    public static final String CREDENTIALS = "ROLE_USER";

    private String username;

}