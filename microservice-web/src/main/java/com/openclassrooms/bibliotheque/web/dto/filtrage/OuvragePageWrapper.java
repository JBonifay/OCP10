package com.openclassrooms.bibliotheque.web.dto.filtrage;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class OuvragePageWrapper {

    private int    pageNumber;
    private int    pageSize;
    private String name;
    private String author;
    private String editor;
    private int    numberOfPages;
    private int    notation;
    private int    quantity;

}
