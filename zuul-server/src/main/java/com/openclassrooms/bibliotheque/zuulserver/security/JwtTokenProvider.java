package com.openclassrooms.bibliotheque.zuulserver.security;


import com.openclassrooms.bibliotheque.zuulserver.bean.AuthenticationRequest;
import com.openclassrooms.bibliotheque.zuulserver.rest.exceptions.InvalidJwtAuthenticationException;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collection;
import java.util.Date;
import java.util.stream.Collectors;
import javax.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

@RequiredArgsConstructor
@Component
public class JwtTokenProvider {

    private static final String AUTHORITIES_KEY = "auth";
    private final JwtProperties jwtProperties;
    private long tokenValidityInMilliseconds = 3600000;
    private String secretKey;

    @PostConstruct
    protected void init() {
        secretKey = Base64.getEncoder().encodeToString(jwtProperties.getSecretKey().getBytes());
    }

    public String createToken(Authentication authentication) {

        String authorities = AuthenticationRequest.CREDENTIALS;

        long now = (new Date()).getTime();
        Date validity = new Date(now + this.tokenValidityInMilliseconds);

        return Jwts.builder()
            .setSubject(authentication.getName())
            .claim(AUTHORITIES_KEY, authorities)
            .signWith(SignatureAlgorithm.HS512, secretKey)
            .setExpiration(validity)
            .compact();
    }

    public Authentication getAuthentication(String token) {
        Claims claims = Jwts.parser()
            .setSigningKey(secretKey)
            .parseClaimsJws(token)
            .getBody();

        Collection<? extends GrantedAuthority> authorities =
            Arrays.stream(claims.get(AUTHORITIES_KEY).toString().split(","))
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toList());

        User principal = new User(claims.getSubject(), "", authorities);

        return new UsernamePasswordAuthenticationToken(principal, token, authorities);
    }

    public boolean validateToken(String token) {
        try {
            Jws<Claims> claims = Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token);

            if (claims.getBody().getExpiration().before(new Date())) {
                return false;
            }

            return true;
        } catch (JwtException | IllegalArgumentException e) {
            throw new InvalidJwtAuthenticationException("Expired or invalid JWT token");
        }
    }

}