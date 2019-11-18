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
    @Column(name = "id")
    private int id;
    //
    // @Column(name = "ouvrage_id")
    // private int    ouvrageId;

    @Column(name = "quantite")
    private int    quantite;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "ouvrage_id",unique = true)
    private Ouvrage ouvrage;
}
