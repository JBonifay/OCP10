package com.openclassrooms.bibliotheque.utilisateur.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "utilisateur")
public class Utilisateur {

    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "utilisateur_id")
    private int id;

    @NotNull
    @NotEmpty(message = "*Please provide an email")
    @Length(min = 3)
    @Column(name = "first_name")
    private String firstName;

    @NotNull
    @NotEmpty(message = "*Please provide an email")
    @Length(min = 3)
    @Column(name = "last_name")
    private String lastName;

    @NotNull
    @Email(message = "*Please provide a valid email")
    @NotEmpty(message = "*Please provide an email")
    @Length(min = 3)
    @Column(name = "email")
    private String email;

    @NotNull
    @NotEmpty(message = "*Please provide an email")
    @Length(min = 3)
    @Column(name = "password")
    private String password;


}
