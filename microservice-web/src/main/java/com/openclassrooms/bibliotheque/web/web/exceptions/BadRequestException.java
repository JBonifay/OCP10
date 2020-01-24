package com.openclassrooms.bibliotheque.web.web.exceptions;

public class BadRequestException extends RuntimeException {

    public static final String DEFAULT = "Bad request ...";

    public BadRequestException() {
        super(DEFAULT);
    }

    public BadRequestException(String s) {
        super(s);
    }
}
