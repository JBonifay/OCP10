package com.openclassrooms.bibliotheque.zuulserver.config;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.Authentication;
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
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .exceptionHandling().authenticationEntryPoint(
                (req, rsp, e) -> rsp.sendError(HttpServletResponse.SC_UNAUTHORIZED));

        // @formatter:on
    }

    private static class OnAuthenticateSuccess implements org.springframework.security.web.authentication.AuthenticationSuccessHandler {

        @Override
        public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                Authentication authentication) throws IOException, ServletException {
            httpServletResponse.setContentType("application/json");
            httpServletResponse.getWriter().println(authentication);
        }
    }


    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }



}
