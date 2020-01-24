package com.openclassrooms.bibliotheque.web.web.exceptions;

public class InternalServerException extends RuntimeException {

    public static final String DEFAULT = "Internal error ...";

    public InternalServerException() {
        super(DEFAULT);
    }

    public InternalServerException(String reason) {
        super(reason);
    }
}
