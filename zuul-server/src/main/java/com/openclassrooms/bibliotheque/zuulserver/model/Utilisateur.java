package com.openclassrooms.bibliotheque.zuulserver.model;

import java.util.ArrayList;
import java.util.Collection;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "utilisateur")
public class Utilisateur implements UserDetails {

    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "utilisateur_id")
    private int    utilisateurId;
    @NotNull
    @Length(min = 3)
    @Column(name = "first_name")
    private String firstName;
    @NotNull
    @Length(min = 3)
    @Column(name = "last_name")
    private String lastName;
    @NotNull
    @Email(message = "*Please provide a valid email")
    @Length(min = 3)
    @Column(name = "email")
    private String email;
    @NotNull
    @Length(min = 3)
    @Column(name = "password")
    private String password;

    @Transient
    private String jwtToken;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return new ArrayList<>();
    }

    @Override
    public String getUsername() {
        return this.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
