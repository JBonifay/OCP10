package com.openclassrooms.bibliotheque.reservation.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class OuvrageDto {

    private int ouvrageId;
    private String name;
    private String author;
    private Date   releaseDate;
    private String summary;
    private String editor;
    private int    numberOfPages;
    private int    notation;
    private int    quantity;

}
