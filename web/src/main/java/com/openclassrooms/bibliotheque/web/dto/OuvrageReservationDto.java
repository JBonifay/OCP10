package com.openclassrooms.bibliotheque.web.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OuvrageReservationDto {

    private int    ouvrageId;
    private String name;
    private Date   reservationDateDebut;
    private Date   reservationDateFin;

}
