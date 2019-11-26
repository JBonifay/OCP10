package com.openclassrooms.bibliotheque.reservation.dto;

import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import org.mapstruct.BeanMapping;
import org.mapstruct.Mapper;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Mapper
public interface ReservationMapper {

    ReservationDto toReservationDto(Reservation reservation);

    ReservationOuvrageInfoDto toReservationOuvrageInfoDto(Reservation reservation);

}
