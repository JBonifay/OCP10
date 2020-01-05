package com.openclassrooms.bibliotheque.zuulserver.repository;

import com.openclassrooms.bibliotheque.zuulserver.model.Utilisateur;
import java.time.Instant;
import java.util.List;
import java.util.Optional;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

    String UTILISATEURS_BY_EMAIL_CACHE = "usersByEmail";

    @EntityGraph(attributePaths = "authorities")
    @Cacheable(cacheNames = UTILISATEURS_BY_EMAIL_CACHE)
    Optional<Utilisateur> findOneWithAuthoritiesByEmailIgnoreCase(String email);

    
}
