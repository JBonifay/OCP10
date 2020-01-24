package com.openclassrooms.bibliotheque.zuulserver.config.jwt;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.openclassrooms.bibliotheque.zuulserver.config.jwt.dto.UtilisateurDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class JwtAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    private final JwtToken jwtToken;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
            Authentication authentication) throws IOException, ServletException {

        UtilisateurDto authenticatedUtilisateurDto = (UtilisateurDto) authentication.getPrincipal();
        authenticatedUtilisateurDto.setJwtToken("Bearer " + jwtToken.generateToken(authenticatedUtilisateurDto));

        String json = new ObjectMapper().writeValueAsString(authenticatedUtilisateurDto);

        httpServletResponse.setStatus(HttpStatus.OK.value());
        httpServletResponse.setContentType("application/json");
        httpServletResponse.getWriter().write(json);
        httpServletResponse.flushBuffer();
    }

}


