package com.openclassrooms.bibliotheque.reservation.beans;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class OuvrageBean {
    
    private String name;
    private String author;
    private Date   releaseDate;
    private String summary;
    private String editor;
    private int    numberOfPages;
    private int    notation;
    private int    quantity;
    
}
