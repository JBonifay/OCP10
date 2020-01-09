package com.openclassrooms.bibliotheque.zuulserver.config.jwt;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import java.io.Serializable;
import java.util.Date;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component
public class JwtTokenUtil implements Serializable {

    public static final  long   ACCESS_TOKEN_VALIDITY_SECONDS = 5 * 60 * 60; // Sample value of 5 hours
    private static final String jwtKey                        = "mysecretkey";

    private String doGenerateToken(String subject) {
        Claims claims = Jwts.claims().setSubject(subject);
        return Jwts.builder().setClaims(claims).setIssuer("http://jwtdemo.com").setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + ACCESS_TOKEN_VALIDITY_SECONDS * 1000))
                .signWith(SignatureAlgorithm.HS256, jwtKey).compact();
    }

    public String getUsernameFromToken(String token) {
        final Claims claims = getAllClaimsFromToken(token);
        return claims.getSubject();
    }

    private Claims getAllClaimsFromToken(String token) {
        return Jwts.parser().setSigningKey(jwtKey).parseClaimsJws(token).getBody();
    }

    public Boolean validateToken(String token, UserDetails userDetails) {
        final Claims claims = getAllClaimsFromToken(token);
        return (claims.getSubject().equals(userDetails.getUsername()) && !claims.getExpiration().before(new Date()));
    }

}