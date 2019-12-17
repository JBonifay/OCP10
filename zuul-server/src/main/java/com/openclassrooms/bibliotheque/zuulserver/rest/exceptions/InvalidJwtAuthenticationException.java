package com.openclassrooms.bibliotheque.zuulserver.rest.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.I_AM_A_TEAPOT)
public class InvalidJwtAuthenticationException extends RuntimeException {

    public InvalidJwtAuthenticationException(String value) {
        super(value);
    }

}
