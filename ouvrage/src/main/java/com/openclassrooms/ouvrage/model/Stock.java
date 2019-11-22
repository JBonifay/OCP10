package com.openclassrooms.ouvrage.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
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
    @Column(name = "stock_id")
    private int stockId;

    @Column(name = "ouvrage_id")
    private int    ouvrageId;

    @Column(name = "quantity")
    private int    quantity;

}
