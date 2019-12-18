package com.openclassrooms.bibliotheque.reservation.rest.exception;

public class ReservationIntrouvable extends RuntimeException {
    
    public ReservationIntrouvable(String s) {
        super(s);
    }
    
}
