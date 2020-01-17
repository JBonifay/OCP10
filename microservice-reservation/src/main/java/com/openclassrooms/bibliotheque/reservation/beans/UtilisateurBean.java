package com.openclassrooms.bibliotheque.reservation.beans;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UtilisateurBean {
    
    private int    id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    
}
