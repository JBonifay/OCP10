package com.openclassrooms.bibliotheque.reservation.exception;

public class ReservationIntrouvable extends RuntimeException {
    
    public ReservationIntrouvable(String s) {
        super(s);
    }
    
}
