package com.openclassrooms.bibliotheque.zuulserver.config.jwt;

import io.jsonwebtoken.MalformedJwtException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ResponseStatusException;

@Component
@RequiredArgsConstructor
@Slf4j
public class JwtAuthenticationEntryPoint implements AuthenticationEntryPoint {


    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authEx)
            throws IOException, ServletException {

        final String requestTokenHeader = request.getHeader("Authorization");
        if (requestTokenHeader != null) {
            log.info("Jwt token is invalid ");
            log.info("Jwt token = " + requestTokenHeader);
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Jwt token is expired");
        } else {
            log.error("Token not present, login credentials are invalid");
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Invalid Login details");
        }

    }
}