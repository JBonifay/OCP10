package com.openclassrooms.bibliotheque.web.dto.filtrage;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class OuvrageRechercheBody {

    private int    pageNumber;
    private int    pageSize;
    private String name;
    private String author;
    private Date   releaseDate;
    private String editor;
    private int    numberOfPages;
    private int    notation;
    private int    quantity;

}
