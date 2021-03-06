package com.openclassrooms.bibliotheque.ouvrage.repository;

import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import java.util.Optional;
import javax.validation.constraints.NotNull;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface OuvrageRepository extends JpaRepository<Ouvrage, String> {

    Optional<Ouvrage> findByOuvrageId(int ouvrageId);

    @Query("select o "
            + "from Ouvrage o "
            + "where o.name like :name "
            + "and o.author like :author "
            + "and o.editor like :editor "
            + "and o.numberOfPages >= :numberOfPages "
            + "and o.notation >= :notation "
            + "and o.stock.quantity >= :stockQuantity")
    Page<Ouvrage> getFilteredResult(
            @NotNull String name, @NotNull String author,
            String editor, int numberOfPages,
            int notation, int stockQuantity, Pageable pageable);

}
