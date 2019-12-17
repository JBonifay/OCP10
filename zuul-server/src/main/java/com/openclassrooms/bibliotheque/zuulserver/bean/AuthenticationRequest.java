package com.openclassrooms.bibliotheque.zuulserver.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuthenticationRequest {

    private Integer userId;
    private String  email;
    private String  password;
    private String  token;

}