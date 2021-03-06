package com.openclassrooms.bibliotheque.web.dto.filtrage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OuvrageFiltre {

    private String name = "";
    private String author = "";
    private String editor = "";
    private int    numberOfPages=0;
    private int    notation = 0;
    private int    quantity = 0;

}
