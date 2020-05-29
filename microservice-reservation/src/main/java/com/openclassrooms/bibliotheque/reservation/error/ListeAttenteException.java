package com.openclassrooms.bibliotheque.reservation.error;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class ListeAttenteException extends RuntimeException {

    private static final String DEFAULT = "Liste attente non trouvé.";

    public ListeAttenteException() {
        super(DEFAULT);
    }

    public ListeAttenteException(String s) {
        super(s);
    }
}
