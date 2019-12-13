package com.openclassrooms.bibliotheque.web.beans.ouvrage;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OuvrageReservationBean {

    private int ouvrageId;
    private String name;
    private Date reservationDateDebut;
    private Date reservationDateFin;

}
