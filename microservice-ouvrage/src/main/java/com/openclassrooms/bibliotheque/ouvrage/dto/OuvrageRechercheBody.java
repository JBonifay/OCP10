package com.openclassrooms.bibliotheque.ouvrage.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class OuvrageRechercheBody {

    private Integer       pageNumber;
    private Integer       pageSize;
    private OuvrageFiltre ouvrageFiltre;

}
