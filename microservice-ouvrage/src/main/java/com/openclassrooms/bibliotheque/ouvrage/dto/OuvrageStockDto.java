package com.openclassrooms.bibliotheque.ouvrage.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OuvrageStockDto {
    
    private int    ouvrageId;
    private String name;
    private String author;
    private String editor;
    private Date   releaseDate;
    private int    quantity;
    private int    nbrUserWaitingReturn;
    private Date   nextReturnDate;

}
