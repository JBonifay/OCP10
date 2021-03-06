package com.openclassrooms.bibliotheque.web.web.controller;

import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.utilisateur.UtilisateurDto;
import com.openclassrooms.bibliotheque.web.service.RechercheService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@Slf4j
@RequiredArgsConstructor
public class DescriptionController {

    public static final String           ERROR_MESSAGE = "errorMessage";
    private final       RechercheService rechercheService;

    /**
     * Used to get the description page of the ouvrage selected
     *
     * @param ouvrageId    the ouvrage ID selected
     * @param errorMessage received if it's a redirected view, contain an error message
     * @return the view
     */
    @GetMapping("/ouvrage/description")
    public ModelAndView getOuvrageDescriptionPage(@RequestParam(value = "id") int ouvrageId,
            @ModelAttribute("errorMessage") String errorMessage) {
        ModelAndView description = new ModelAndView("description");
        OuvrageDescriptionDto ouvrageDescriptionDto = rechercheService.getOuvrageDescriptionById(ouvrageId);
        description.addObject("ouvrage", ouvrageDescriptionDto);
        description.addObject(ERROR_MESSAGE, errorMessage);

        return description;
    }

    /**
     * Create a new reservation of the ouvrage for the current user
     *
     * @param ouvrageId          the ouvrage ID to reserve
     * @param redirectAttributes used to transmit alert message to UI
     * @return a redirect view, same page if error with errorMessage, reservation page if success
     */
    @GetMapping("/reservation/creer")
    public RedirectView createReservationForUser(@RequestParam(value = "ouvrage_id") int ouvrageId,
            RedirectAttributes redirectAttributes) {

        UtilisateurDto utilisateurDto = (UtilisateurDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        return rechercheService.createNewReservation(ouvrageId, redirectAttributes, utilisateurDto);
    }

    @GetMapping("/reservation/listeattente/creer")
    public RedirectView createListeAttenteForUser(@RequestParam(value = "ouvrage_id") int ouvrageId,
            RedirectAttributes redirectAttributes) {
        UtilisateurDto utilisateurDto = (UtilisateurDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        return rechercheService.createNewListeAttente(ouvrageId, redirectAttributes, utilisateurDto);
    }

}
