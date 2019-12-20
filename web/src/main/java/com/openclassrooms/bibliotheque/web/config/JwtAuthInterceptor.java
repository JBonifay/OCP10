package com.openclassrooms.bibliotheque.web.config;

import com.openclassrooms.bibliotheque.web.beans.utilisateur.UtilisateurBean;
import feign.RequestInterceptor;
import feign.RequestTemplate;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.context.SecurityContextHolder;

@Configuration
public class JwtAuthInterceptor implements RequestInterceptor{

    @Override
    public void apply(RequestTemplate requestTemplate) {
        UtilisateurBean utilisateurBean = (UtilisateurBean) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        requestTemplate.header("Authorization", utilisateurBean.getToken());
    }
    
}
