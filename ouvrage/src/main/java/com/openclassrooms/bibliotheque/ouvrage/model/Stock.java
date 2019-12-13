package com.openclassrooms.bibliotheque.ouvrage.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "stock")
public class Stock {

    @Id
    @NotNull
    @Column(name = "stock_id")
    private int stockId;

    @NotNull
    @Column(name = "ouvrage_id")
    private int ouvrageId;

    @Column(name = "quantity")
    private int quantity;

}
