package com.openclassrooms.reservation.dto;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationDto {

    private int id;
    private int idOuvrage;
    private int idUtilisateur;
    private Date dateDebutReservation;
    private Date dateFinReservation;

}
