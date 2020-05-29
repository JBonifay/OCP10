package com.openclassrooms.bibliotheque.reservation;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

import com.openclassrooms.bibliotheque.reservation.error.ListeAttenteException;
import com.openclassrooms.bibliotheque.reservation.error.ReservationException;
import org.junit.Test;

public class ErrorTest {

    @Test
    public void reservationExceptionTest() {
        ReservationException reservationException = new ReservationException();
        ReservationException customReservationException = new ReservationException("Custom exception message");


        assertThat(reservationException.getMessage()).isEqualTo("Réservation non trouvée.");
        assertThat(customReservationException.getMessage()).isEqualTo("Custom exception message");
    }

    @Test
    public void listeAttenteExceptionTest() {
        ListeAttenteException listeAttenteException = new ListeAttenteException();
        ListeAttenteException customListeAttenteException = new ListeAttenteException("Custom exception message");

        assertThat(listeAttenteException.getMessage()).isEqualTo("Liste attente non trouvé.");
        assertThat(customListeAttenteException.getMessage()).isEqualTo("Custom exception message");
    }

}
