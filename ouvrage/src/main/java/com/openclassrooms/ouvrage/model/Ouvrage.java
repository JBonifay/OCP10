package com.openclassrooms.ouvrage.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "ouvrage")
public class Ouvrage {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ouvrage_id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "author")
    private String author;

    @Column(name = "release_date")
    private Date releaseDate;

    @Column(name = "summary")
    private String summary;

    @Column(name = "editor")
    private String editor;

    @Column(name = "number_of_pages")
    private int numberOfPages;

    @Column(name = "notation")
    private int notation;

    @OneToOne
    @JoinColumn(name = "ouvrage_id")
    private Stock stock;

}
