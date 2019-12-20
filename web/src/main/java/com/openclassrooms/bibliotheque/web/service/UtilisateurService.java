package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.web.proxies.AuthProxy;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import java.util.ArrayList;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class UtilisateurService implements AuthenticationProvider {

    @Autowired
    private final AuthProxy             authProxy;
    @Autowired
    private final UtilisateurProxy      utilisateurProxy;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String email = authentication.getName();
        String password = authentication.getCredentials().toString();

        UtilisateurBean utilisateurBean = new UtilisateurBean();
        utilisateurBean.setEmail(email);
        utilisateurBean.setPassword(passwordEncoder.encode(password));

        String token = generateToken(utilisateurBean);

        UtilisateurBean auth = loadUser(utilisateurBean);

        if (auth != null && passwordEncoder.matches(password, auth.getPassword())) {
            utilisateurBean.setToken(token);
            return new UsernamePasswordAuthenticationToken(utilisateurBean, password, new ArrayList<>());
        } else {
            throw new BadCredentialsException("Authentification échoué");
        }
    }

    private UtilisateurBean loadUser(UtilisateurBean utilisateurBean) {
        return utilisateurProxy.loadUserByEmail(utilisateurBean.getEmail()).orElse(null);
    }

    private String generateToken(UtilisateurBean authentication) {
        return authProxy.generateToken(authentication);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }


    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


}