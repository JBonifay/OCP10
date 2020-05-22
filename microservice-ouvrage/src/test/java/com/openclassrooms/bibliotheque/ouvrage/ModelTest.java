package com.openclassrooms.bibliotheque.ouvrage;


import static org.assertj.core.api.Assertions.assertThat;

import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.model.Stock;
import java.sql.Date;
import org.junit.jupiter.api.Test;

public class ModelTest {

    // ====== Ouvrage ======
    @Test
    public void ouvrageModelTest() {
        // Given
        Ouvrage ouvrage = new Ouvrage();
        Date date = new Date(new java.util.Date().getTime());
        Stock stock = new Stock(1, 1, 1);

        // When add values
        ouvrage.setOuvrageId(1);
        ouvrage.setName("unit-test");
        ouvrage.setAuthor("unit-test");
        ouvrage.setReleaseDate(date);
        ouvrage.setSummary("unit-test");
        ouvrage.setEditor("unit-test");
        ouvrage.setNumberOfPages(100);
        ouvrage.setNotation(5);
        ouvrage.setStock(stock);

        // Then ouvrage should be well created

        assertThat(ouvrage.getOuvrageId()).isEqualTo(1);
        assertThat(ouvrage.getName()).isEqualTo("unit-test");
        assertThat(ouvrage.getAuthor()).isEqualTo("unit-test");
        assertThat(ouvrage.getReleaseDate()).isEqualTo(date);
        assertThat(ouvrage.getSummary()).isEqualTo("unit-test");
        assertThat(ouvrage.getEditor()).isEqualTo("unit-test");
        assertThat(ouvrage.getNumberOfPages()).isEqualTo(100);
        assertThat(ouvrage.getNotation()).isEqualTo(5);
        assertThat(ouvrage.getNumberOfPages()).isEqualTo(100);
        assertThat(ouvrage.getStock()).isEqualTo(stock);
    }

    // ====== Stock ======
    @Test
    public void stockModelTest() {
        // Given
        Stock stock = new Stock();

        // When
        stock.setStockId(1);
        stock.setOuvrageId(2);
        stock.setQuantity(3);

        // Then
        assertThat(stock.getStockId()).isEqualTo(1);
        assertThat(stock.getOuvrageId()).isEqualTo(2);
        assertThat(stock.getQuantity()).isEqualTo(3);


    }

}
