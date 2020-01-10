package com.openclassrooms.bibliotheque.zuulserver.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.openclassrooms.bibliotheque.zuulserver.exception.AuthenticationFailureException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler {

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException e) throws IOException, ServletException {
        AuthenticationFailureException error = new AuthenticationFailureException("Logout and login");

        try {
            String json = new ObjectMapper().writeValueAsString(error);
            response.setStatus(HttpServletResponse.SC_CONFLICT);
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);
            response.setCharacterEncoding(StandardCharsets.UTF_8.toString());
            response.getWriter().write(json);

        } catch (Exception e1) {
            log.error(e1.getMessage());
        }
    }

}