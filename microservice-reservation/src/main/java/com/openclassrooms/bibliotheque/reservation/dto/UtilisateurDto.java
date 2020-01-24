package com.openclassrooms.bibliotheque.reservation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UtilisateurDto {
    
    private int    id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    
}
