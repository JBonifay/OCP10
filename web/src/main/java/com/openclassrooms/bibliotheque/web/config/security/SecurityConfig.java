package com.openclassrooms.bibliotheque.web.config.security;

import com.openclassrooms.bibliotheque.web.service.UtilisateurService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

@RequiredArgsConstructor
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final UtilisateurService userDetailsService;
    private final PasswordEncoder    passwordEncoder;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(userDetailsService);
    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {

        httpSecurity.authorizeRequests().anyRequest().authenticated().and().formLogin().defaultSuccessUrl("/").and().logout()
                .invalidateHttpSession(true).deleteCookies("JSESSIONID");

        httpSecurity.csrf().disable();

    }

}