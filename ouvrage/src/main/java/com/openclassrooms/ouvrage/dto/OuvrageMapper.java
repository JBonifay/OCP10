package com.openclassrooms.ouvrage.dto;

import com.openclassrooms.ouvrage.model.Ouvrage;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface OuvrageMapper {

    OuvrageMapper INSTANCE = Mappers.getMapper(OuvrageMapper.class);

    OuvrageDto ouvrageDtoToOuvrageStockDto(OuvrageDto ouvrageDto);

    OuvrageStockDto ouvrageToOuvrageStockDto(Ouvrage ouvrage);

    OuvrageStockDto ouvrageStockDtoToOuvrageDto(OuvrageStockDto ouvrageStockDto);

}
