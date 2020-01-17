package com.openclassrooms.bibliotheque.web.beans.utilisateur;

import java.util.Collection;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UtilisateurBean implements UserDetails {

    private int          utilisateurId;
    private String       firstName;
    private String       lastName;
    private String       email;
    private String       password;
    private boolean      enabled;
    private String       username;
    private List<String> authorities;
    private boolean      accountNonExpired;
    private boolean      accountNonLocked;
    private boolean      credentialsNonExpired;
    private String       jwtToken;

    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }
    
    @Override
    public boolean isAccountNonExpired() {
        return accountNonExpired;
    }
    
    @Override
    public boolean isAccountNonLocked() {
        return accountNonLocked;
    }
    
    @Override
    public boolean isCredentialsNonExpired() {
        return credentialsNonExpired;
    }
    
    @Override
    public boolean isEnabled() {
        return enabled;
    }
    
}
