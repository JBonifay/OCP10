package com.openclassrooms.bibliotheque.web.config;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import feign.RequestInterceptor;
import feign.RequestTemplate;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.context.SecurityContextHolder;

@Configuration
@Slf4j
public class JwtAuthInterceptor implements RequestInterceptor {

    @Override
    public void apply(RequestTemplate requestTemplate) {
        if (SecurityContextHolder.getContext().getAuthentication() != null) {
            UtilisateurBean utilisateurBean = (UtilisateurBean) SecurityContextHolder.getContext()
                                                                                     .getAuthentication()
                                                                                     .getPrincipal();

            requestTemplate.header("Authorization", utilisateurBean.getToken());
        }
    }
}

