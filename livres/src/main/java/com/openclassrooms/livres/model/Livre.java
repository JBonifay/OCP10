package com.openclassrooms.livres.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Livre {

    @Id
    @GeneratedValue
    private int    id;
    private String name;
    private String author;
    private Date   releaseDate;

}
