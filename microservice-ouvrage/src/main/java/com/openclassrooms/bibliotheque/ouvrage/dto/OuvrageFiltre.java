package com.openclassrooms.bibliotheque.ouvrage.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OuvrageFiltre {

    private String name;
    private String author;
    private Date   releaseDate;
    private String editor;
    private int    numberOfPages;
    private int    notation;
    private int    quantity;

}
