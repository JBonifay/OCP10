package com.openclassrooms.bibliotheque.reservation.error;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class ReservationException extends RuntimeException {

    public static final String DEFAULT = "Réservation non trouvée.";

    public ReservationException() {
        super(DEFAULT);
    }

    public ReservationException(String s) {
        super(s);
    }
}
