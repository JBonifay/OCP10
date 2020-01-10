package com.openclassrooms.bibliotheque.zuulserver;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AuthenticationBean {

    private Integer utilisateurId;
    private String  email;
    private String  password;
    private String  token;

}
