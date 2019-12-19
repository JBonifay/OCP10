package com.openclassrooms.bibliotheque.reservation.rest.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.EXPECTATION_FAILED)
public class NoStockException extends RuntimeException {
    
    public NoStockException(String s) {
        super(s);
        
    }
    
}
