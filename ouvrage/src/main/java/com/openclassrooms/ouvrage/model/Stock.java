package com.openclassrooms.ouvrage.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
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

    @Column(name = "quantite")
    private int    quantite;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "ouvrage_id", unique = true)
    private Ouvrage ouvrage;
}
