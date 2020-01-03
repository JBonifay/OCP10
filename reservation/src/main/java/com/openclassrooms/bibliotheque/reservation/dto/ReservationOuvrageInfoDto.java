package com.openclassrooms.bibliotheque.reservation.dto;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationOuvrageInfoDto {

    private int     reservationId;
    private int     ouvrageId;
    private Date    reservationDateDebut;
    private Date    reservationDateFin;
    private boolean dejaProlonge;

}
