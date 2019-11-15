package com.openclassrooms.ouvrage.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Ouvrage {

    @Id
    @GeneratedValue
    private int    id;
    private String name;
    private String author;
    private Date   releaseDate;

    @OneToOne
    @JoinColumn(name = "id_ouvrage", referencedColumnName = "id_ouvrage")
    private Stock stock;

}
