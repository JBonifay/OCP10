package com.openclassrooms.bibliotheque.ouvrage;


import static org.assertj.core.api.Assertions.assertThat;

import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.StockErrorException;
import org.junit.jupiter.api.Test;

public class ExceptionTest {

    @Test
    public void throwDefaultExceptionOuvrageNotFound() {
        OuvrageNotFoundException ouvrageNotFoundException = new OuvrageNotFoundException();

        assertThat(ouvrageNotFoundException.getMessage()).isEqualTo("Ouvrage non trouvé ...");
    }

    @Test
    public void throwCustomExceptionOuvrageNotFound() {
        OuvrageNotFoundException ouvrageNotFoundException = new OuvrageNotFoundException("Custom sentence for exception ...");

        assertThat(ouvrageNotFoundException.getMessage()).isEqualTo("Custom sentence for exception ...");
    }

    @Test
    public void throwDefaultExceptionStockError() {
        StockErrorException ouvrageNotFoundException = new StockErrorException();

        assertThat(ouvrageNotFoundException.getMessage()).isEqualTo("Erreur dans le stock");
    }

    @Test
    public void throwCustomExceptionStockError() {
        StockErrorException ouvrageNotFoundException = new StockErrorException("Custom sentence for exception ...");

        assertThat(ouvrageNotFoundException.getMessage()).isEqualTo("Custom sentence for exception ...");
    }

}
