package com.openclassrooms.bibliotheque.web.dto.ouvrage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ListeAttenteDto {

    private int ouvrageId;
    private String ouvrageName;
    private int listeAttenteId;
    private int utilisateurId;
    private int positionFileAttente;

}
