package com.openclassrooms.ouvrage.dto;

import com.openclassrooms.ouvrage.model.Ouvrage;
import java.util.List;
import org.mapstruct.Mapper;

@Mapper
public interface OuvrageMapper {

    List<OuvrageStockDto> toProductDTOs(List<Ouvrage> ouvrageList);

    OuvrageDto toProductDTO(Ouvrage ouvrage);

    Ouvrage toProduct(OuvrageDto ouvrageDto);

}
