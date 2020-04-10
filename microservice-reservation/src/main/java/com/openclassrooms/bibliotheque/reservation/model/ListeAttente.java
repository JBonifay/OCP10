package com.openclassrooms.bibliotheque.reservation.model;

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
@Table(name = "liste_attente")
public class ListeAttente {

    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int listeAttenteId;

    @NotNull
    @Column(name = "id_client")
    private int clientId;

    @NotNull
    @Column(name = "id_ouvrage")
    private int ouvrageId;


    @Column(name = "position_file_attente")
    private int positionFileAttente;

}