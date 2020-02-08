package com.openclassrooms.bibliotheque.ouvrage.dto;

import java.awt.print.Pageable;
import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class OuvrageRechercheBody {

    private Pageable      pageable;
    private OuvrageFiltre ouvrageFiltre;

}
