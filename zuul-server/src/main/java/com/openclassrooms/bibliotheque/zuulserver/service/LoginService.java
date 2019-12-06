package com.openclassrooms.bibliotheque.zuulserver.service;

import com.openclassrooms.bibliotheque.zuulserver.bean.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.zuulserver.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.zuulserver.repository.JwtTokenRepository;
import com.openclassrooms.bibliotheque.zuulserver.security.JwtTokenProvider;
import com.openclassrooms.bibliotheque.zuulserver.web.exception.CustomException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class LoginService {

    private final JwtTokenProvider      jwtTokenProvider;
    private final AuthenticationManager authenticationManager;

    public String login(final UtilisateurBean utilisateurBean) {

        try {

            Authentication authentication = new UsernamePasswordAuthenticationToken(utilisateurBean.getEmail(),
                                                                                    utilisateurBean.getPassword());
            authenticationManager.authenticate(authentication);

            return jwtTokenProvider.createToken(utilisateurBean.getEmail());

        } catch (AuthenticationException e) {
            throw new CustomException("Invalid username or password.", HttpStatus.UNAUTHORIZED);
        }
    }

    public boolean logout(String token) {
        // jwtTokenRepository.delete(new JwtToken(token));
        return true;
    }

    public String createNewToken(String token) {
        String username = jwtTokenProvider.getUsername(token);
        return jwtTokenProvider.createToken(username);
    }

}
