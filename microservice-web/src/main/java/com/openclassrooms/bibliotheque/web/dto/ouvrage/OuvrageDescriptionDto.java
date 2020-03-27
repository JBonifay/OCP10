package com.openclassrooms.bibliotheque.web.dto.ouvrage;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OuvrageDescriptionDto {

    private int    ouvrageId;
    private String name;
    private String author;
    private Date   releaseDate;
    private String summary;
    private String editor;
    private int    numberOfPages;
    private int    notation;
    private int    quantity;

}
