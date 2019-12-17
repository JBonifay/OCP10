package com.openclassrooms.bibliotheque.reservation.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "reservation")
public class Reservation {
    
    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "reservation_id")
    private int  reservationId;
    @NotNull
    @Column(name = "ouvrage_id")
    private int  ouvrageId;
    @NotNull
    @Column(name = "utilisateur_id")
    private int  utilisateurId;
    @NotNull
    @Column(name = "reservation_date_debut")
    private Date reservationDateDebut;
    @NotNull
    @Column(name = "reservation_date_fin")
    private Date reservationDateFin;
    
}
