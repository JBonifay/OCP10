package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageFiltre;
import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvragePageWrapper;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageStockDto;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import com.openclassrooms.bibliotheque.web.web.controller.DescriptionController;
import feign.FeignException;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Service
@RequiredArgsConstructor
public class RechercheService {

    private final OuvrageProxy     ouvrageProxy;
    private final ReservationProxy reservationProxy;

    public RestPageImpl<OuvrageStockDto> getAllOuvrageListByPage(Pageable pageable, OuvrageFiltre ouvrageFiltre) {
        RestPageImpl<OuvrageStockDto> ouvrageListByPage = ouvrageProxy.getAllOuvrageListByPage(new OuvragePageWrapper(pageable.getPageNumber(),
                                                                                                                      pageable.getPageSize(),
                                                                                                                      ouvrageFiltre
                                                                                                                              .getName(),
                                                                                                                      ouvrageFiltre
                                                                                                                              .getAuthor(),
                                                                                                                      ouvrageFiltre
                                                                                                                              .getEditor(),
                                                                                                                      ouvrageFiltre
                                                                                                                              .getNumberOfPages(),
                                                                                                                      ouvrageFiltre
                                                                                                                              .getNotation(),
                                                                                                                      ouvrageFiltre
                                                                                                                              .getQuantity()));

        ouvrageListByPage.stream().forEach(ouvrageStockDto -> {
            ouvrageStockDto.setNbrUserWaitingReturn(reservationProxy.getNbrOfUserWaitingForOuvrageId(ouvrageStockDto.getOuvrageId()));
            ouvrageStockDto.setNbrActiveReservation(reservationProxy.getNbrOfActiveReservationForOuvrageId(ouvrageStockDto.getOuvrageId()));
            ouvrageStockDto.setNextReturnDate(reservationProxy.getNextReturnDateForOuvrageId(ouvrageStockDto.getOuvrageId()));
        });

        return ouvrageListByPage;
    }

    public OuvrageDescriptionDto getOuvrageDescriptionById(int ouvrageId) {
        return ouvrageProxy.getOuvrageDescriptionById(ouvrageId);
    }

    public RedirectView createNewReservation(@RequestParam("ouvrage_id") int ouvrageId, RedirectAttributes redirectAttributes,
            UtilisateurDto utilisateurDto) {
        RedirectView redirectView;
        try {
            reservationProxy.createNewReservation(utilisateurDto.getUtilisateurId(), ouvrageId);
            redirectView = new RedirectView("/reservation");
        } catch (FeignException e) {
            redirectView = new RedirectView("/ouvrage/description");
            redirectView.addStaticAttribute("id", ouvrageId);
            redirectAttributes.addFlashAttribute(DescriptionController.ERROR_MESSAGE, e.getMessage());
        }
        return redirectView;
    }

    public RedirectView createNewListeAttente(@RequestParam("ouvrage_id") int ouvrageId, RedirectAttributes redirectAttributes,
            UtilisateurDto utilisateurDto) {
        RedirectView redirectView;
        try {
            reservationProxy.createNewListeAttente(utilisateurDto.getUtilisateurId(), ouvrageId);
            redirectView = new RedirectView("/reservation");
        } catch (FeignException e) {
            redirectView = new RedirectView("/ouvrage/description");
            redirectView.addStaticAttribute("id", ouvrageId);
            redirectAttributes.addFlashAttribute(DescriptionController.ERROR_MESSAGE, e.getMessage());
        }
        return redirectView;
    }

}
