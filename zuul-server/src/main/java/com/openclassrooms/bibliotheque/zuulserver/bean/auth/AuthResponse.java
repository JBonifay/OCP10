package com.openclassrooms.bibliotheque.zuulserver.bean.auth;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
public class AuthResponse {

    private String accessToken;

}
