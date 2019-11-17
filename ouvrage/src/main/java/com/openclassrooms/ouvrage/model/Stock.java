package com.openclassrooms.ouvrage.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MapsId;
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
    @Column(name = "ouvrage_id")
    private int    ouvrageId;

    @Column(name = "quantite")
    private int    quantite;

    // @OneToOne
    // @MapsId
    // private Ouvrage ouvrage;
}
