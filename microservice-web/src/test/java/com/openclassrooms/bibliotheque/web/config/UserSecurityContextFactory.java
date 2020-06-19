package com.openclassrooms.bibliotheque.web.config;

import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import java.util.ArrayList;
import java.util.Arrays;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.security.test.context.support.WithSecurityContextFactory;

public class UserSecurityContextFactory implements WithSecurityContextFactory<WithMockCustomUser> {



    @Override
    public SecurityContext createSecurityContext(WithMockCustomUser withMockUser) {
        SecurityContext context = SecurityContextHolder.createEmptyContext();

        final UtilisateurDto authenticatedUtilisateur = new UtilisateurDto(1,
                                                                                   "firstname",
                                                                                   "lastname",
                                                                                   "test@test.co",
                                                                                   withMockUser.password(),
                                                                                   true,
                                                                                   withMockUser.username(),
                                                                           new ArrayList<>(),
                                                                                   true,
                                                                                   true,
                                                                                   true,
                                                                                   "");

        Authentication auth = new UsernamePasswordAuthenticationToken(authenticatedUtilisateur,
                                                                      authenticatedUtilisateur.getPassword(),
                                                                      authenticatedUtilisateur.getAuthorities());
        context.setAuthentication(auth);
        return context;
    }
}
