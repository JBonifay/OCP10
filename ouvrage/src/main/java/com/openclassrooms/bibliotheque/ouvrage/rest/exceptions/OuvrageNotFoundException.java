package com.openclassrooms.bibliotheque.ouvrage.rest.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class OuvrageNotFoundException extends RuntimeException {

    private final static String DEFAULT = "Ouvrage non trouvé ...";

    public OuvrageNotFoundException() {
        super(DEFAULT);
    }

    public OuvrageNotFoundException(String error) {
        super(error);
    }

}
