package com.openclassrooms.bibliotheque.zuulserver.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.openclassrooms.bibliotheque.zuulserver.config.jwt.JwtToken;
import com.openclassrooms.bibliotheque.zuulserver.model.Utilisateur;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class CustomAuthenticationResultHandler implements AuthenticationSuccessHandler {

    private final JwtToken jwtToken;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
            Authentication authentication) throws IOException, ServletException {

        Utilisateur authenticatedUtilisateur = (Utilisateur) authentication.getPrincipal();
        authenticatedUtilisateur.setJwtToken("Bearer " + jwtToken.generateToken(authenticatedUtilisateur));

        String json = new ObjectMapper().writeValueAsString(authenticatedUtilisateur);

        httpServletResponse.setStatus(HttpStatus.OK.value());
        httpServletResponse.setContentType("application/json");
        httpServletResponse.getWriter().write(json);
        httpServletResponse.flushBuffer();
    }

}


