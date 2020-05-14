package com.openclassrooms.bibliotheque.reservation.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "liste_attente")
public class ListeAttente {

    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int listeAttenteId;

    @NotNull
    @Column(name = "id_utilisateur")
    private int utilisateurId;

    @NotNull
    @Column(name = "id_ouvrage")
    private int ouvrageId;

    @NotNull
    @Column(name = "position_file_attente")
    private int positionFileAttente;

    @NotNull
    @Column(name = "notification_sent")
    private boolean notificationSent;

    @Column(name = "notification_timestamp")
    private Timestamp notificationTimestamp;

}

