package com.openclassrooms.bibliotheque.ouvrage.rest.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class StockErrorException extends RuntimeException {

    public static final String DEFAULT = "Erreur dans le stock";

    public StockErrorException() {
        super(DEFAULT);
    }

    public StockErrorException(String s) {
        super(s);
    }
}
