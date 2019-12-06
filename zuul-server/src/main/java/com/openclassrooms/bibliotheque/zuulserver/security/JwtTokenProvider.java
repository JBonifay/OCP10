package com.openclassrooms.bibliotheque.zuulserver.security;

import com.openclassrooms.bibliotheque.zuulserver.bean.JwtToken;
import com.openclassrooms.bibliotheque.zuulserver.bean.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.zuulserver.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.zuulserver.repository.JwtTokenRepository;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import java.util.Base64;
import java.util.Date;
import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@RequiredArgsConstructor
@Component
public class JwtTokenProvider {

    private static final String             AUTHORIZATION          = "Authorization";
    private final        JwtTokenRepository jwtTokenRepository;
    private final        UtilisateurProxy   utilisateurProxy;
    private              String             secretKey              = "secret-key";
    private              long               validityInMilliseconds = 3600000; // 1h

    @PostConstruct
    protected void init() {
        secretKey = Base64.getEncoder()
                          .encodeToString(secretKey.getBytes());
    }

    public String createToken(String username) {

        Claims claims = Jwts.claims()
                            .setSubject(username);

        Date now      = new Date();
        Date validity = new Date(now.getTime() + validityInMilliseconds);

        String token = Jwts.builder()//
                           .setClaims(claims)//
                           .setIssuedAt(now)//
                           .setExpiration(validity)//
                           .signWith(SignatureAlgorithm.HS256, secretKey)//
                           .compact();

        JwtToken jwtToken = new JwtToken();
        jwtToken.setToken(token);

        jwtTokenRepository.save(jwtToken);

        return token;
    }

    public String resolveToken(HttpServletRequest req) {
        /*if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7, bearerToken.length());
        }*/
        return req.getHeader(AUTHORIZATION);
    }

    public void validateToken(String token) throws JwtException, IllegalArgumentException {
        Jwts.parser()
            .setSigningKey(secretKey)
            .parseClaimsJws(token);
    }

    public boolean isTokenPresentInDB(String token) {
        return jwtTokenRepository.existsByTokenEquals(token);
    }

    public UtilisateurBean getUserDetails(String token) {
        String userEmail = getUsername(token);
        return utilisateurProxy.findUtilisateurByEmail(userEmail)
                               .getBody();
    }


    public String getUsername(String token) {
        return Jwts.parser()
                   .setSigningKey(secretKey)
                   .parseClaimsJws(token)
                   .getBody()
                   .getSubject();
    }

    public Authentication getAuthentication(String token) {
        UserDetails userDetails = getUserDetails(token);
        return new UsernamePasswordAuthenticationToken(userDetails, "", userDetails.getAuthorities());
    }

}
