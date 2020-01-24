package com.openclassrooms.bibliotheque.web.web.exceptions;

public class GlobalException extends RuntimeException {

    public static final String DEFAULT = "Error ...";

    public GlobalException() {
        super(DEFAULT);
    }

    public GlobalException(String s) {
        super(s);
    }
}
