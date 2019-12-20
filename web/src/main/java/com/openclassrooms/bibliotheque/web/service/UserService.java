package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import java.util.ArrayList;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService implements AuthenticationProvider {
    
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String name = authentication.getName();
        String password = authentication.getCredentials().toString();
        return new UsernamePasswordAuthenticationToken(mockAuth(), password, new ArrayList<>());
    }
    
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
    
    public UtilisateurBean mockAuth() {
        UtilisateurBean utilisateurBean = new UtilisateurBean();
        utilisateurBean.setUserId(1);
        utilisateurBean.setEmail("bbeeble0@instagram.com");
        utilisateurBean.setPassword("$2y$10$kAVjqCjOcq55vCc4IsaQTeYSV8Ml8lOcyYEeY3FCmVp4TXEhnnbeK");
        utilisateurBean.setToken(
                "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjb20ub3BlbmNsYXNzcm9vbXMiLCJpYXQiOjE1NzY4MzAzNjMsImV4cCI6MTYwODM2NjM2MywiYXVkIjoid3d3LmV4YW1wbGUuY29tIiwic3ViIjoiYmJlZWJsZTBAaW5zdGFncmFtLmNvbSIsIkdpdmVuTmFtZSI6IkJyaWRpZSIsIlN1cm5hbWUiOiJ0ZXJzdCIsIkVtYWlsIjoiYmJlZWJsZTBAaW5zdGFncmFtLmNvbSIsIlJvbGUiOiJVU0VSIn0.0fSa60EaMRPQCYY7Ps8McHIKooaItiuT2sZbcQ1Ivt0");
        return utilisateurBean;
    }
    
}