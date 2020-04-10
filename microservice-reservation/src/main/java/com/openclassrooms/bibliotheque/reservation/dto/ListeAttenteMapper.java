package com.openclassrooms.bibliotheque.reservation.dto;

import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import org.mapstruct.Mapper;

@Mapper
public interface ListeAttenteMapper {
    
    ListeAttenteDto toReservationOuvrageInfoDto(ListeAttente listeAttente);
    
}
