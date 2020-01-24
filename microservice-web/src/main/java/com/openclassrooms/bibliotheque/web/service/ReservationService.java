package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageIdNameDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageReservationDto;
import com.openclassrooms.bibliotheque.web.dto.reservation.ReservationDto;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {
    
    public List<OuvrageReservationDto> createOuvrageReservationDto(List<ReservationDto> reservationDtoList,
                                                                     List<OuvrageIdNameDto> ouvrageIdNameDtoList) {
        List<OuvrageReservationDto> ouvrageReservationDtos = new ArrayList<>();
        ouvrageIdNameDtoList.forEach(ouvrageIdNameDto -> {
            ReservationDto reservationDto = new ReservationDto();

            for (ReservationDto r : reservationDtoList) {
                if (r.getOuvrageId() == ouvrageIdNameDto.getOuvrageId()) {
                    reservationDto = r;
                }
            }
            OuvrageReservationDto ouvrageReservationDto = new OuvrageReservationDto();
            ouvrageReservationDto.setReservationId(reservationDto.getReservationId());
            ouvrageReservationDto.setOuvrageId(ouvrageIdNameDto.getOuvrageId());
            ouvrageReservationDto.setName(ouvrageIdNameDto.getName());
            ouvrageReservationDto.setAuthor(ouvrageIdNameDto.getAuthor());
            ouvrageReservationDto.setNotation(ouvrageIdNameDto.getNotation());
            ouvrageReservationDto.setReservationDateDebut(reservationDto.getReservationDateDebut());
            ouvrageReservationDto.setReservationDateFin(reservationDto.getReservationDateFin());
            ouvrageReservationDto.setAlreadyProlonger(reservationDto.isDejaProlonge());
            ouvrageReservationDtos.add(ouvrageReservationDto);
        });
        return ouvrageReservationDtos;
    }
    
}
