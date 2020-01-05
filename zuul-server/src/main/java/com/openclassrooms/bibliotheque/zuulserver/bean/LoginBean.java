package com.openclassrooms.bibliotheque.zuulserver.bean;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import lombok.Data;

/**
 * View Model object for storing a user's credentials.
 */
@Data
public class LoginBean {

    @NotNull
    @Size(min = 1, max = 50)
    private String username;

    @NotNull
    @Size(min = 4, max = 100)
    private String password;

}