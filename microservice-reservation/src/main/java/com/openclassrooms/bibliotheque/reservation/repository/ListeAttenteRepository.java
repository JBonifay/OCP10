package com.openclassrooms.bibliotheque.reservation.repository;

import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ListeAttenteRepository extends JpaRepository<ListeAttente, Integer> {

    Optional<List<ListeAttente>> findAllByUtilisateurId(int utilisateurId);

    Optional<List<ListeAttente>> findAllByOuvrageIdOrderByPositionFileAttente(int ouvrageId);

    ListeAttente getByOuvrageIdAndPositionFileAttente(int ouvrageId, int positionFileAttente);

    Optional<List<ListeAttente>> getAllByNotificationSentIsTrue();
}
