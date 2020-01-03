package com.openclassrooms.bibliotheque.reservation.rest.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class ReservationAlreadyReturnedException extends RuntimeException {

    public static final String DEFAULT = "La reservation à déjà été retournée";

    public ReservationAlreadyReturnedException() {
        super(DEFAULT);
    }

    public ReservationAlreadyReturnedException(String s) {
        super(s);
    }
}
