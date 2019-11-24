package com.openclassrooms.reservation.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class ReservationIntrouvableException extends RuntimeException {

    public ReservationIntrouvableException(String error) {
        super(error);
    }

}
