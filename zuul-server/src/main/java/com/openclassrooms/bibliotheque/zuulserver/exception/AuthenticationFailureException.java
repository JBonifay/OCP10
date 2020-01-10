package com.openclassrooms.bibliotheque.zuulserver.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.UNAUTHORIZED)
public class AuthenticationFailureException extends RuntimeException {

    public static final String DEFAULT = "Bad credentials";

    public AuthenticationFailureException() {
        super();
    }

    public AuthenticationFailureException(String s) {
        super(s);
    }
}
