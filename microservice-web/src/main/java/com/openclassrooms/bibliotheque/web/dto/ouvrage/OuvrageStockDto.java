package com.openclassrooms.bibliotheque.web.dto.ouvrage;

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
    private Date   releaseDate;
    private int    quantity;
    private Number nbrActiveReservation;
    private Number nbrUserWaitingReturn;
    private Date   nextReturnDate;

}
