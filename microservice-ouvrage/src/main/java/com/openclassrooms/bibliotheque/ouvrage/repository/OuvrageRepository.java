package com.openclassrooms.bibliotheque.ouvrage.repository;

import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.model.Stock;
import java.util.Date;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import org.hibernate.validator.constraints.Length;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface OuvrageRepository extends JpaRepository<Ouvrage, String> {

    Ouvrage findByOuvrageId(int ouvrageId);

    @Query("select o from Ouvrage o "
            + "where "
            + "o.name like :name and "
            + "o.author like :auhor and "
            + "o.releaseDate between :releaseDate and current_date and "
            + "o.editor like :editor and "
            + "o.numberOfPages >= :numberOfPages and "
            + "o.notation >= :notation and "
            + "o.stock.quantity >= :stock_quantity")
    Page<Ouvrage> getFilteredResult(
            @NotNull String name, @NotNull String author,
            @Past @NotNull Date releaseDate, String editor, int numberOfPages,
            int notation, int stock_quantity, Pageable pageable);

}
