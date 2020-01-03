package com.openclassrooms.batch.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UtilisateurOuvrageBean {

    private String firstName;
    private String secondName;
    private String email;
    private String ouvrageName;

}
