package com.openclassrooms.utilisateur.repository;

import com.openclassrooms.utilisateur.model.Utilisateur;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

    Optional<Utilisateur> findUtilisateurByEmailIgnoreCase(String email);

}
