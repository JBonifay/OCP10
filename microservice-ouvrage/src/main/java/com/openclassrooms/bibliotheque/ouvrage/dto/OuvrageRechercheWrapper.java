package com.openclassrooms.bibliotheque.ouvrage.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class OuvrageRechercheWrapper {

    private Integer pageNumber;
    private Integer pageSize;
    private String  name;
    private String  author;
    private String  editor;
    private int     numberOfPages;
    private int     notation;
    private int     quantity;

}
