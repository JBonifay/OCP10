package com.openclassrooms.bibliotheque.web.dto.ouvrage;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OuvrageReservationDto {

    private int     reservationId;
    private int     ouvrageId;
    private String  name;
    private String  author;
    private Date    reservationDateDebut;
    private Date    reservationDateFin;
    private boolean isAlreadyProlonger;
    private String  notation;


}
