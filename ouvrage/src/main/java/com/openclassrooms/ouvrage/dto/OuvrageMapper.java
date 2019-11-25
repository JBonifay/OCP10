package com.openclassrooms.ouvrage.dto;


import com.openclassrooms.ouvrage.model.Ouvrage;
import java.util.List;
import org.mapstruct.InheritConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface OuvrageMapper {

    @Mapping(source = "stock.quantity", target = "quantity")
    OuvrageStockDto toOuvrageStockDto(Ouvrage ouvrage);

    @Mapping(source = "stock.quantity", target = "quantity")
    OuvrageDescriptionDto toOuvrageDescriptionDto(Ouvrage ouvrage);

    OuvrageNameIdDto toOuvrageNameIdDto(Ouvrage ouvrage);

}
