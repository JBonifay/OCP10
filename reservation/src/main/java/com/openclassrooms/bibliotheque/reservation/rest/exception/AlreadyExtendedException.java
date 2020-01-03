package com.openclassrooms.bibliotheque.reservation.rest.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class AlreadyExtendedException extends RuntimeException {

    private static final String DEFAULT = "La réservation à déjà été prolongée !";

    public AlreadyExtendedException() {
        super(DEFAULT);
    }

    public AlreadyExtendedException(String s) {
        super(s);
    }
    
}
