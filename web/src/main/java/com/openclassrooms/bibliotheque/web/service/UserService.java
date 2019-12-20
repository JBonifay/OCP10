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
        utilisateurBean.setEmail("j@g.com");
        utilisateurBean.setPassword("bla");
        utilisateurBean.setToken(
                "Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJBdXRoZW50aWNhdGlvblJlcXVlc3QodXNlcklkPW51bGwsIGVtYWlsPW51bGwsIHBhc3N3b3JkPWFkbWluLCB0b2tlbj1udWxsKSIsImF1dGgiOiJVU0VSIiwiZXhwIjoxNTc2NzgwMDM1fQ.AtwhiadXWqSrmgWBqnfDc1raTBTys9EKD2DOmjozO9sniRMWcKsHOjSCJZLeFvcIvRdEDx3OZlexgAKYpSmx2w");
        return utilisateurBean;
    }
    
}