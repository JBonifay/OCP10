package com.openclassrooms.bibliotheque.web.web.exceptions;

public class EntityNotFoundException extends RuntimeException {

    public static final String DEFAULT = "Entity not found ...";

    public EntityNotFoundException() {
        super(DEFAULT);
    }

    public EntityNotFoundException(String reason) {
        super(reason);
    }

}
