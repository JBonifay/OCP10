package com.openclassrooms.livres.repository;

import com.openclassrooms.livres.model.Livre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LivresRepository extends JpaRepository<Livre, Integer> {


}
