package com.openclassrooms.bibliotheque.reservation.rest.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class ReservationAlreadyExistingException extends RuntimeException {

    public ReservationAlreadyExistingException(String message) {
        super(message);
    }
}
