package com.openclassrooms.bibliotheque.web.dto.ouvrage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OuvrageIdNameDto {

    private int    ouvrageId;
    private String name;
    private String author;
    private String notation;


}
