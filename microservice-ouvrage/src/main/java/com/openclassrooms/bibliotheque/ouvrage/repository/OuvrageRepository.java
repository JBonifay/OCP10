package com.openclassrooms.bibliotheque.ouvrage.repository;

import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OuvrageRepository extends JpaRepository<Ouvrage, String> {
    
    Ouvrage findByOuvrageId(int ouvrageId);
    
}