package com.openclassrooms.bibliotheque.ouvrage.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OuvrageNameIdDto {

    private int    ouvrageId;
    private String name;
    private String author;
    private int    notation;

}
