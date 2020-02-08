package com.openclassrooms.bibliotheque.ouvrage.dto;

import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.model.Stock;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-02-08T13:36:01+0100",
    comments = "version: 1.3.1.Final, compiler: javac, environment: Java 1.8.0_242 (Private Build)"
)
@Component
public class OuvrageMapperImpl implements OuvrageMapper {

    @Override
    public OuvrageStockDto toOuvrageStockDto(Ouvrage ouvrage) {
        if ( ouvrage == null ) {
            return null;
        }

        OuvrageStockDto ouvrageStockDto = new OuvrageStockDto();

        ouvrageStockDto.setQuantity( ouvrageStockQuantity( ouvrage ) );
        ouvrageStockDto.setOuvrageId( ouvrage.getOuvrageId() );
        ouvrageStockDto.setName( ouvrage.getName() );
        ouvrageStockDto.setAuthor( ouvrage.getAuthor() );
        ouvrageStockDto.setEditor( ouvrage.getEditor() );
        ouvrageStockDto.setReleaseDate( ouvrage.getReleaseDate() );

        return ouvrageStockDto;
    }

    @Override
    public OuvrageDescriptionDto toOuvrageDescriptionDto(Ouvrage ouvrage) {
        if ( ouvrage == null ) {
            return null;
        }

        OuvrageDescriptionDto ouvrageDescriptionDto = new OuvrageDescriptionDto();

        ouvrageDescriptionDto.setQuantity( ouvrageStockQuantity( ouvrage ) );
        ouvrageDescriptionDto.setName( ouvrage.getName() );
        ouvrageDescriptionDto.setAuthor( ouvrage.getAuthor() );
        ouvrageDescriptionDto.setReleaseDate( ouvrage.getReleaseDate() );
        ouvrageDescriptionDto.setSummary( ouvrage.getSummary() );
        ouvrageDescriptionDto.setEditor( ouvrage.getEditor() );
        ouvrageDescriptionDto.setNumberOfPages( ouvrage.getNumberOfPages() );
        ouvrageDescriptionDto.setNotation( ouvrage.getNotation() );

        return ouvrageDescriptionDto;
    }

    @Override
    public OuvrageNameIdDto toOuvrageNameIdDto(Ouvrage ouvrage) {
        if ( ouvrage == null ) {
            return null;
        }

        OuvrageNameIdDto ouvrageNameIdDto = new OuvrageNameIdDto();

        ouvrageNameIdDto.setOuvrageId( ouvrage.getOuvrageId() );
        ouvrageNameIdDto.setName( ouvrage.getName() );
        ouvrageNameIdDto.setAuthor( ouvrage.getAuthor() );
        ouvrageNameIdDto.setNotation( ouvrage.getNotation() );

        return ouvrageNameIdDto;
    }

    private int ouvrageStockQuantity(Ouvrage ouvrage) {
        if ( ouvrage == null ) {
            return 0;
        }
        Stock stock = ouvrage.getStock();
        if ( stock == null ) {
            return 0;
        }
        int quantity = stock.getQuantity();
        return quantity;
    }
}
