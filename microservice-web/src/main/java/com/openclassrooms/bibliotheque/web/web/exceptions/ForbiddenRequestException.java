package com.openclassrooms.bibliotheque.web.web.exceptions;

public class ForbiddenRequestException extends RuntimeException {

    public static final String DEFAULT = "Accés non autorisé !!!";

    public ForbiddenRequestException() {
        super(DEFAULT);
    }

    public ForbiddenRequestException(String reason) {
        super(reason);
    }
}
