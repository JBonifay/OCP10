package com.openclassrooms.ouvrage.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Ouvrage {

    @Id
    @GeneratedValue
    private int    id;
    private String name;
    private String author;
    private Date   releaseDate;

    @OneToMany
    @JoinTable(name = "stock",
               joinColumns = @JoinColumn(name = "id"),
               inverseJoinColumns = @JoinColumn(name = "quantite"))
    private int quantiteEnStock;

}
