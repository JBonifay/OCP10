package com.openclassrooms.bibliotheque.ouvrage.dto;


import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import org.mapstruct.Mapper;
import org.mapstruct.MapperConfig;
import org.mapstruct.Mapping;
import org.springframework.stereotype.Component;

@Mapper
public interface OuvrageMapper {

    @Mapping(source = "stock.quantity", target = "quantity")
    OuvrageStockDto toOuvrageStockDto(Ouvrage ouvrage);

    @Mapping(source = "stock.quantity", target = "quantity")
    OuvrageDescriptionDto toOuvrageDescriptionDto(Ouvrage ouvrage);

    OuvrageNameIdDto toOuvrageNameIdDto(Ouvrage ouvrage);

}
