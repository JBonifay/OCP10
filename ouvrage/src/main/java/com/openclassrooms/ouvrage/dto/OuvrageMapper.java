package com.openclassrooms.ouvrage.dto;

import com.openclassrooms.ouvrage.model.Ouvrage;
import java.util.List;
import org.mapstruct.InheritConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface OuvrageMapper {

    @Mapping(source = "stock.quantite", target = "quantite")
    OuvrageStockDto toOuvrageStockDto(Ouvrage ouvrage);

    @InheritConfiguration
    List<OuvrageStockDto> toProductDTOs(List<Ouvrage> ouvrageList);

    OuvrageDto toProductDTO(Ouvrage ouvrage);

    Ouvrage toProduct(OuvrageDto ouvrageDto);

}
