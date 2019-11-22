package com.openclassrooms.beans.reservation;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationBean {

    private int  reservationId;
    private int  ouvrageId;
    private int  utilisateurId;
    private Date reservationDateDebut;
    private Date reservationDateFin;

}
