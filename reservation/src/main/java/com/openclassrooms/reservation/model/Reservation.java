package com.openclassrooms.reservation.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Reservation {

    @Id
    @NotNull
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "reservation_id")
    private int id;

    @NotNull
    @Column(name = "ouvrage_id")
    private int idOuvrage;

    @NotNull
    @Column(name = "utilisateur_id")
    private int idUtilisateur;

    @NotNull
    private Date dateDebutReservation;

    @NotNull
    private Date dateFinReservation;

}
