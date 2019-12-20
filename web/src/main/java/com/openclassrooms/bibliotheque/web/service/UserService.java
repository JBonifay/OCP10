package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.web.proxies.AuthProxy;
import com.openclassrooms.bibliotheque.web.proxies.UtilisateurProxy;
import java.util.ArrayList;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService implements AuthenticationProvider, UserDetailsService {

    private final AuthProxy             authProxy;
    private final UtilisateurProxy      utilisateurProxy;
    private final AuthenticationManager authenticationManager;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String email = authentication.getName();
        String password = authentication.getCredentials().toString();

        UtilisateurBean utilisateurBean = new UtilisateurBean();
        utilisateurBean.setEmail(email);
        utilisateurBean.setPassword(password);

        String token = generateToken(utilisateurBean);

        utilisateurBean = authenticateUser(utilisateurBean);

        if (utilisateurBean != null) {
            utilisateurBean.setToken(token);
            return new UsernamePasswordAuthenticationToken(utilisateurBean, password, new ArrayList<>());
        } else {
            throw new BadCredentialsException("Authentification échoué");
        }
    }

    private UtilisateurBean authenticateUser(UtilisateurBean utilisateurBean) {
        utilisateurProxy.loadUserByEmail(utilisateurBean.getEmail());

        return null;
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

    private String generateToken(UtilisateurBean authentication) {
        return authProxy.generateToken(authentication);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return null;
    }
}