package com.openclassrooms.livres.domain;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Livre {

    @Id
    @Column(name = "id")
    private String name;

    @Column(name = "author")
    private String author;

    @Column(name = "release_date")
    private Date   releaseDate;

}
