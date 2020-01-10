package com.openclassrooms.bibliotheque.zuulserver.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.openclassrooms.bibliotheque.zuulserver.model.Utilisateur;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@Slf4j
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final CustomUserDetailsService customUserDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(customUserDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        // @formatter:off
        httpSecurity
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/rest/**").authenticated()
                .and()
                .logout().disable()
                .formLogin()
                .loginProcessingUrl("/authenticate")
                .successHandler(new OnAuthenticateSuccess())
                .failureHandler(new OnAuthenticateFailure())
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        // @formatter:on
    }

    private static class OnAuthenticateSuccess implements org.springframework.security.web.authentication.AuthenticationSuccessHandler {

        @Override
        public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                Authentication authentication) throws IOException, ServletException {

            Utilisateur authenticatedUtilisateur = (Utilisateur) authentication.getPrincipal();
            String json = new ObjectMapper().writeValueAsString(authenticatedUtilisateur);

            httpServletResponse.setStatus(HttpStatus.OK.value());
            httpServletResponse.setContentType("application/json");
            httpServletResponse.getWriter().write(json);
            httpServletResponse.flushBuffer();
        }
    }

    private static class OnAuthenticateFailure implements
            org.springframework.security.web.authentication.AuthenticationFailureHandler {

        @Override
        public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                AuthenticationException exception) throws IOException, ServletException {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
        }
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


}
