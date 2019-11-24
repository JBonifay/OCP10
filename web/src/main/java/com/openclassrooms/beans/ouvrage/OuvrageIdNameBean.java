package com.openclassrooms.beans.ouvrage;

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
