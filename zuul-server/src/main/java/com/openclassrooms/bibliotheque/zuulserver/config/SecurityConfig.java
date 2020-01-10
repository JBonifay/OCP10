package com.openclassrooms.bibliotheque.zuulserver.config;

import com.openclassrooms.bibliotheque.zuulserver.config.jwt.JwtAuthenticationEntryPoint;
import com.openclassrooms.bibliotheque.zuulserver.config.jwt.JwtAuthenticationSuccessHandler;
import com.openclassrooms.bibliotheque.zuulserver.config.jwt.JwtRequestFilter;
import com.openclassrooms.bibliotheque.zuulserver.service.CustomUserDetailsService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@Slf4j
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final CustomUserDetailsService customUserDetailsService;
    private final JwtRequestFilter         jwtRequestFilter;

    private final JwtAuthenticationSuccessHandler authenticationResultHandler;
    private final JwtAuthenticationEntryPoint     unauthorizedHandler;

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
                .antMatchers("/authenticate").permitAll()
                .anyRequest().authenticated()
                .and()
                .logout().disable()
                .formLogin()
                .loginProcessingUrl("/authenticate")
                .successHandler(authenticationResultHandler)
                .and()
                .exceptionHandling()
                .authenticationEntryPoint(unauthorizedHandler)
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .addFilterBefore(jwtRequestFilter, UsernamePasswordAuthenticationFilter.class);
        // @formatter:on

    }


    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


}
