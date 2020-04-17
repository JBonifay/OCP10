package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageFiltre;
import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvragePageWrapper;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageStockDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RechercheService {

    private final OuvrageProxy ouvrageProxy;
    private final ReservationProxy reservationProxy;

    public RestPageImpl<OuvrageStockDto> getAllOuvrageListByPage(Pageable pageable, OuvrageFiltre ouvrageFiltre) {
        RestPageImpl<OuvrageStockDto> ouvrageListByPage = ouvrageProxy.getAllOuvrageListByPage(new OuvragePageWrapper(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                ouvrageFiltre.getName(),
                ouvrageFiltre.getAuthor(),
                ouvrageFiltre.getEditor(),
                ouvrageFiltre.getNumberOfPages(),
                ouvrageFiltre.getNotation(),
                ouvrageFiltre.getQuantity()));

        ouvrageListByPage.stream().forEach(ouvrageStockDto -> {
            ouvrageStockDto.setNbrUserWaitingReturn(reservationProxy.getNbrOfUserWaitingForOuvrageId(ouvrageStockDto.getOuvrageId()));
            ouvrageStockDto.setNbrActiveReservation(reservationProxy.getNbrOfActiveReservationForOuvrageId(ouvrageStockDto.getOuvrageId()));
            ouvrageStockDto.setNextReturnDate(reservationProxy.getNextReturnDateForOuvrageId(ouvrageStockDto.getOuvrageId()));
        });

        return ouvrageListByPage;
    }


}
