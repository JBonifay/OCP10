package com.openclassrooms.reservation.model;

import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Reservation {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;
    private int idOuvrage;
    private int idUtilisateur;
    private Date dateDebutReservation;
    private Date dateFinReservation;


}
