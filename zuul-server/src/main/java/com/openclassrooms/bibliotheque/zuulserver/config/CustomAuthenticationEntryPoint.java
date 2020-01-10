package com.openclassrooms.bibliotheque.zuulserver.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.openclassrooms.bibliotheque.zuulserver.exception.AuthenticationFailureException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class CustomAuthenticationEntryPoint implements AuthenticationEntryPoint {

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException {
        AuthenticationFailureException error = new AuthenticationFailureException(e.getMessage());

        try {
            String json = new ObjectMapper().writeValueAsString(error);
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);
            response.setCharacterEncoding(StandardCharsets.UTF_8.toString());
            response.getWriter().write(json);

        } catch (Exception e1) {
            log.error(e1.getMessage());
        }

    }
}