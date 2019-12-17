package com.openclassrooms.bibliotheque.zuulserver.config;

import com.openclassrooms.bibliotheque.zuulserver.security.JwtSecurityConfigurer;
import com.openclassrooms.bibliotheque.zuulserver.security.JwtTokenProvider;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

@RequiredArgsConstructor
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    
    @Autowired
    JwtTokenProvider jwtTokenProvider;
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.httpBasic().disable().csrf().disable().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and().authorizeRequests().antMatchers("/auth/signin").permitAll()
                .antMatchers("/microservice-utilisateur/utilisateur/loaduser/*").permitAll().anyRequest().fullyAuthenticated()
                .and().apply(new JwtSecurityConfigurer(jwtTokenProvider));
        
    }
    
}