package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageIdNameDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageReservationDto;
import com.openclassrooms.bibliotheque.web.dto.reservation.ReservationDto;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final OuvrageProxy     ouvrageProxy;
    private final ReservationProxy reservationProxy;

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
            ouvrageReservationDto.setActive(reservationDto.isActive());
            ouvrageReservationDtos.add(ouvrageReservationDto);
        });
        return ouvrageReservationDtos;
    }

    public void getReservationForUser(ModelAndView reservation, UtilisateurDto utilisateurDto) {
        List<ReservationDto> reservationDtoList = reservationProxy.getAllReservationListByUtilisateurId(utilisateurDto.getUtilisateurId());

        List<OuvrageIdNameDto> ouvrageIdNameDtoList = ouvrageProxy.getAllOuvrageByOuvrageIdList(reservationDtoList.stream()
                                                                                                        .map(ReservationDto::getOuvrageId)
                                                                                                        .collect(Collectors.toList()));

        reservation.addObject("reservationList", createOuvrageReservationDto(reservationDtoList, ouvrageIdNameDtoList));

        reservation.addObject("listeAttente",
                              reservationProxy.getAllReservationEnAttenteListByUtilisateurId(utilisateurDto.getUtilisateurId()));

    }


    public void prolongateReservation(int reservationId) {
        reservationProxy.prolongateReservation(reservationId);

    }

    public void annulerListeAttente(int listeAttenteId) {
        reservationProxy.annulerListeAttente(listeAttenteId);
    }
}
