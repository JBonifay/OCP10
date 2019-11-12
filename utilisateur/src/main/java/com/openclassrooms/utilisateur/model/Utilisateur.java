package com.openclassrooms.utilisateur.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Utilisateur {

    @Id
    @GeneratedValue
    private int id;
    private String firstName;
    private String secondName;
    private String email;
    private String password;


}
