package com.openclassrooms.bibliotheque.reservation.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.I_AM_A_TEAPOT)
public class AlreadyExtendedException extends RuntimeException {
    
    public AlreadyExtendedException(String s) {
        super(s);
    }
    
}
