package com.openclassrooms.bibliotheque.utilisateur.repository;

import com.openclassrooms.bibliotheque.utilisateur.model.Utilisateur;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

    Optional<Utilisateur> findUtilisateurByEmailIgnoreCase(String email);

}
