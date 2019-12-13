package com.openclassrooms.bibliotheque.web.beans.reservation;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationBean {

    private int ouvrageId;
    private Date reservationDateDebut;
    private Date reservationDateFin;

}
