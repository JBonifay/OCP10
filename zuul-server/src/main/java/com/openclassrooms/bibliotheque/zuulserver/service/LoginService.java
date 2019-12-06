package com.openclassrooms.bibliotheque.zuulserver.service;

import com.openclassrooms.bibliotheque.zuulserver.bean.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.zuulserver.security.JwtTokenProvider;
import com.openclassrooms.bibliotheque.zuulserver.web.exception.CustomException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
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
            throw new CustomException("Invalid username or password.", HttpStatus.UNAUTHORIZED);
        }
    }

    public boolean logout(String token) {
        // jwtTokenRepository.delete(new JwtToken(token));
        return true;
    }

    public String createNewToken(String token) {
        String username = jwtTokenProvider.getUsername(token);
        return jwtTokenProvider.createToken(username);
    }

}
