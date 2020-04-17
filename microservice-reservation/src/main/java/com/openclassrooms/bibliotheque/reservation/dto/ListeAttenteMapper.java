package com.openclassrooms.bibliotheque.reservation.dto;

import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface ListeAttenteMapper {
    
    @Mapping(target = "ouvrageName", ignore = true)
    @Mapping(target = "prochaineDateRetour", ignore = true)
    ListeAttenteDto toReservationOuvrageInfoDto(ListeAttente listeAttente);
    
}
