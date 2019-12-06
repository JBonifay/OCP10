package com.openclassrooms.bibliotheque.zuulserver.security;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UtilisateurBean {

    private static final String CHAMP_OBLIGATOIRE = "*Ce champ est obligatoire";

    private int id;

    @NotEmpty(message = CHAMP_OBLIGATOIRE)
    private String firstName;

    @NotEmpty(message = CHAMP_OBLIGATOIRE)
    private String lastName;

    @NotEmpty(message = CHAMP_OBLIGATOIRE)
    @Email(message = "Cet email semble invalide")
    private String email;

    @NotEmpty(message = CHAMP_OBLIGATOIRE)
    private String password;

}
