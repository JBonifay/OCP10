package com.openclassrooms.bibliotheque.zuulserver.config;

import com.openclassrooms.bibliotheque.zuulserver.security.JwtTokenProvider;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@RequiredArgsConstructor
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private final JwtTokenProvider jwtTokenProvider;

    @Override
    public void configure(WebSecurity web) throws Exception {
        // Allow eureka client to be accessed without authentication
        web.ignoring()
           .antMatchers("/*/")//
           .antMatchers("/eureka/**")//
           .antMatchers(HttpMethod.OPTIONS, "/**"); // Request type options should be allowed.
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        // Disable CSRF (cross site request forgery)
        http.cors()
            .and()
            .csrf()
            .disable();

        // No session will be created or used by spring security
        http.sessionManagement()
            .sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        // Entry points
        http.authorizeRequests()
            .antMatchers("/**/signin/**")
            .permitAll()
            // Disallow everything else..
            .anyRequest()
            .authenticated();

        // If a user try to access a resource without having enough permissions
        http.exceptionHandling()
            .accessDeniedPage("/login");

        // Apply JWT
        http.apply(new JwtTokenFilterConfig(jwtTokenProvider));

        // Optional, if you want to test the API from a browser
        // http.httpBasic();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(10);
    }


}
