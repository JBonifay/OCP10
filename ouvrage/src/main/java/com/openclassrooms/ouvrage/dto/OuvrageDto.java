package com.openclassrooms.ouvrage.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OuvrageDto {

    private int    ouvrageId;
    private String name;
    private String author;
    private Date   releaseDate;
    private String summary;
    private int    stockId;
    private int    quantite;

}
