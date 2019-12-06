package com.openclassrooms.bibliotheque.zuulserver.service;

import com.openclassrooms.bibliotheque.zuulserver.bean.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.zuulserver.security.JwtTokenProvider;
import com.openclassrooms.bibliotheque.zuulserver.web.exception.CustomException;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class LoginService {

    private final JwtTokenProvider      jwtTokenProvider;

    public String login(final UtilisateurBean utilisateurBean) {

        try {

            return jwtTokenProvider.createToken(utilisateurBean.getEmail());

        } catch (AuthenticationException e) {
            throw new CustomException("Mot de passe ou nom d'utilisateur invalide");
        }
    }

    public boolean logout(String token) {
        return jwtTokenProvider.delete(token);
    }

}
