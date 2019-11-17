package com.openclassrooms.ouvrage.model;

import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
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
@Table(name = "ouvrage")
public class Ouvrage {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ouvrage_id")
    private int    ouvrageId;

    @Column(name = "name")
    private String name;

    @Column(name = "author")
    private String author;

    @Column(name = "release_date")
    private Date releaseDate;

    @OneToOne(mappedBy = "quantite")
    private Stock stock;

}
