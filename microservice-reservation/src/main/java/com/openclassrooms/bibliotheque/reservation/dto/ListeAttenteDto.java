package com.openclassrooms.bibliotheque.reservation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class ListeAttenteDto {

    private String ouvrageName;
    private int    listeAttenteId;
    private int    utilisateurId;
    private int    ouvrageId;
    private int    positionFileAttente;

}
