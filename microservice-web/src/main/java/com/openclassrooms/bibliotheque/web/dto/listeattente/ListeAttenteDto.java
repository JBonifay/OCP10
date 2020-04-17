package com.openclassrooms.bibliotheque.web.dto.listeattente;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ListeAttenteDto {

    private int    listeAttenteId;
    private int    ouvrageId;
    private String ouvrageName;
    private int    positionFileAttente;
    private Date   prochaineDateRetour;

}
