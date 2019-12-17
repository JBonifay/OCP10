package com.openclassrooms.bibliotheque.ouvrage.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "ouvrage")
public class Ouvrage {
    
    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ouvrage_id")
    private int    ouvrageId;
    @NotNull
    @Length(min = 3, max = 10)
    @Column(name = "name")
    private String name;
    @NotNull
    @Length(min = 3, max = 10)
    @Column(name = "author")
    private String author;
    @Past
    @NotNull
    @Column(name = "release_date")
    private Date   releaseDate;
    @Length(min = 1, max = 1000)
    @Column(name = "summary")
    private String summary;
    @Length(min = 1, max = 45)
    @Column(name = "editor")
    private String editor;
    @Min(value = 1)
    @Column(name = "number_of_pages")
    private int    numberOfPages;
    @Min(value = 1)
    @Column(name = "notation")
    private int    notation;
    @NotNull
    @OneToOne
    @JoinColumn(name = "ouvrage_id")
    private Stock  stock;
    
}
