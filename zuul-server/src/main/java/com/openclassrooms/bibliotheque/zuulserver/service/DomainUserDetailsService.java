package com.openclassrooms.bibliotheque.zuulserver.service;

import com.openclassrooms.bibliotheque.zuulserver.model.Utilisateur;
import com.openclassrooms.bibliotheque.zuulserver.repository.UtilisateurRepository;
import java.util.Locale;
import lombok.RequiredArgsConstructor;
import org.hibernate.validator.internal.constraintvalidators.bv.EmailValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Authenticate a user from the database.
 */
@Component("userDetailsService")
@RequiredArgsConstructor
public class DomainUserDetailsService implements UserDetailsService {

    private final Logger log = LoggerFactory.getLogger(DomainUserDetailsService.class);

    private final UtilisateurRepository userRepository;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(final String login) {
        log.debug("Authenticating {}", login);

        if (new EmailValidator().isValid(login, null)) {
            return userRepository.findOneWithAuthoritiesByEmailIgnoreCase(login)
                    .map(utilisateur -> createSpringSecurityUser(login, utilisateur)).orElseThrow(
                            () -> new UsernameNotFoundException("User with email " + login + " was not found in the database"));
        }
        return null;
    }

    private User createSpringSecurityUser(String lowercaseLogin, Utilisateur utilisateur) {
        return new org.springframework.security.core.userdetails.User(utilisateur.getEmail(), utilisateur.getPassword(), null);
    }
}