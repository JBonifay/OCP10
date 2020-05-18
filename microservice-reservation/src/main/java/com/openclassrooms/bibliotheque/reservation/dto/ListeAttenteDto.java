package com.openclassrooms.bibliotheque.reservation.dto;

import java.sql.Timestamp;
import java.util.Date;
import lombok.Data;

@Data
public class ListeAttenteDto {

    private int       listeAttenteId;
    private int       ouvrageId;
    private String    ouvrageName;
    private int       positionFileAttente;
    private Date      prochaineDateRetour;
    private boolean   notificationSent;
    private Timestamp notificationTimestamp;

}
