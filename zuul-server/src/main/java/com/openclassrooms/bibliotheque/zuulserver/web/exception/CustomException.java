package com.openclassrooms.bibliotheque.zuulserver.web.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.http.HttpStatus;

@AllArgsConstructor
@Data
public class CustomException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    private final String     message;
    private final HttpStatus httpStatus;

}
