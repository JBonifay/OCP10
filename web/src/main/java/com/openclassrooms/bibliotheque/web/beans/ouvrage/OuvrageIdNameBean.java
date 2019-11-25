package com.openclassrooms.bibliotheque.web.beans.ouvrage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OuvrageIdNameBean {

    private int    ouvrageId;
    private String name;

}
