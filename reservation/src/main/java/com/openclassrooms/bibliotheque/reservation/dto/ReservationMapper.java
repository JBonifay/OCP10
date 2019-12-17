package com.openclassrooms.bibliotheque.reservation.dto;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import org.mapstruct.Mapper;

@Mapper
public interface ReservationMapper {
    
    ReservationDto toReservationDto(Reservation reservation);
    
    ReservationOuvrageInfoDto toReservationOuvrageInfoDto(Reservation reservation);
    
}
