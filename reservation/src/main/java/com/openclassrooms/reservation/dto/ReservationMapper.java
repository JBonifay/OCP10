package com.openclassrooms.reservation.dto;

import com.openclassrooms.reservation.model.Reservation;
import org.mapstruct.Mapper;

@Mapper
public interface ReservationMapper {

    ReservationDto toReservationDto(Reservation reservation);

    ReservationOuvrageInfoDto toReservationOuvrageInfoDto(Reservation reservation);

}
