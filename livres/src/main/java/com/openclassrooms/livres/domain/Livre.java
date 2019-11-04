package com.openclassrooms.livres.domain;

import java.util.Date;
import javax.persistence.Entity;

@Entity
public class Livre {

    private String name;
    private String author;
    private Date   releaseDate;

}
