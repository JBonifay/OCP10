package com.openclassrooms.bibliotheque.zuulserver.rest.controller;

import com.openclassrooms.bibliotheque.zuulserver.bean.AuthenticationRequest;
import com.openclassrooms.bibliotheque.zuulserver.security.JwtTokenProvider;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class AuthController {
    
    private final JwtTokenProvider jwtTokenProvider;
    
    @PostMapping("/auth/signin")
    public ResponseEntity<String> signin(@Valid @RequestBody AuthenticationRequest authentication) {
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(authentication, null);
        //        authenticationManagerBuilder.getObject().authenticate(authenticationToken);
        SecurityContextHolder.getContext().setAuthentication(authenticationToken);
        String jwt = jwtTokenProvider.createToken(authenticationToken);
        return ResponseEntity.ok(jwt);
    }
    
}
