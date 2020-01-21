package com.openclassrooms.bibliotheque.reservation.rest.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
public class ReservationException extends RuntimeException {

    public ReservationException(String s) {
        super(s);
    }

}
