package com.openclassrooms.bibliotheque.zuulserver.bean.auth;

import java.util.Set;
import javax.persistence.Entity;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class User {

    private String    id;

    @Email(message = "*Please provide a valid email")
    @NotEmpty(message = "*Please provide an email")
    private String    email;

    @NotEmpty(message = "*Please provide your name")
    private String    password;

    @NotEmpty(message = "*Please provide your name")
    private String    name;

    @NotEmpty(message = "*Please provide your last name")
    private String    lastName;
    private Integer   active    = 1;
    private boolean   isLoacked = false;
    private boolean   isExpired = false;
    private boolean   isEnabled = true;
    private Set<Role> role;

}
