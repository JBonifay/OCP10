package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.reservation.error.ReservationException;
import com.openclassrooms.bibliotheque.reservation.mail.Mail;
import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ListeAttenteRepository;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import javax.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReservationService {

    private final ReservationRepository  reservationRepository;
    private final ListeAttenteRepository listeAttenteRepository;
    private final OuvrageProxy           ouvrageProxy;
    private final UtilisateurProxy       utilisateurProxy;
    private final Mail                   mail;

    /**
     * List all reservation fo the user
     *
     * @param utilisateurId the user userId
     * @return a list of reservation
     */
    public List<Reservation> findAllReservationByUtilisateurId(int utilisateurId) {
        return reservationRepository.findAllByUtilisateurId(utilisateurId);
    }

    public List<ListeAttente> findAllListeAttenteByUtilisateurId(int utilisateurId) {
        return listeAttenteRepository.findAllByUtilisateurId(utilisateurId);
    }

    /**
     * Extend the reservation to 4 weeks more
     *
     * @param reservationId the reservation to extend
     */
    @SneakyThrows
    public void extendReservation(int reservationId) {
        Reservation r = Optional.of(reservationRepository.getOne(reservationId)).orElseThrow(ReservationException::new);

        if (!r.isDejaProlonge()) {
            if (!r.getReservationDateFin().before(new Date())) {
                r.setReservationDateFin(addFourWeeksToDate(r.getReservationDateFin()));
                r.setDejaProlonge(true);
                reservationRepository.save(r);
            } else {
                throw new ReservationException("La date de retour est trop proche.");
            }
        } else {
            throw new ReservationException("La réservation à déjà été prolongée");
        }
    }

    /**
     * Create a new reservation for a user
     *
     * @param ouvrageId     the ouvrage to reserve
     * @param utilisateurId the user who reserve
     * @Return Null if reservation already exist or the new created reservation
     */
    @Transactional
    public Reservation createNewReservationForUser(int ouvrageId, int utilisateurId) {
        checkIfAlreadyInUserReservationList(ouvrageId, utilisateurId);

        try {
            ouvrageProxy.removeOneStockItem(ouvrageId);
        } catch (Exception e) {
            throw new ReservationException("L'ouvrage n'est plus en stock !");
        }

        Reservation reservation = new Reservation();
        reservation.setUtilisateurId(utilisateurId);
        reservation.setOuvrageId(ouvrageId);
        reservation.setReservationDateDebut(new Date());
        reservation.setReservationDateFin(addFourWeeksToDate(reservation.getReservationDateDebut()));
        reservation.setActive(true);

        return reservationRepository.save(reservation);
    }


    /**
     * Create a new liste attente for a user
     *
     * @param ouvrageId     the ouvrage to reserve
     * @param utilisateurId the user who reserve
     * @Return Null if reservation already exist
     */
    @Transactional
    public ListeAttente createNewListeAttenteForUser(int ouvrageId, int utilisateurId) {
        checkIfAlreadyInUserReservationList(ouvrageId, utilisateurId);

        // Count how many ouvrage exist
        int initialStock = reservationRepository.findAllByOuvrageId(ouvrageId).size() + ouvrageProxy.getNbrInStock(ouvrageId);
        int enAttente = listeAttenteRepository.findAllByOuvrageId(ouvrageId).size();

        if (enAttente >= (initialStock * 2)) {
            throw new ReservationException("La liste d'attente est pleine.");
        }

        int position = listeAttenteRepository.findAllByOuvrageId(ouvrageId).stream()
                .mapToInt(ListeAttente::getPositionFileAttente)
                .max()
                .orElse(0);

        ListeAttente newListeAttente = new ListeAttente();
        newListeAttente.setOuvrageId(ouvrageId);
        newListeAttente.setUtilisateurId(utilisateurId);
        newListeAttente.setPositionFileAttente(position + 1);

        return listeAttenteRepository.save(newListeAttente);
    }


    /**
     * Used to check if user have the ouvrage in his reservation list
     *
     * @param ouvrageId     the ouvrage id
     * @param utilisateurId the utilisateur id
     */
    private void checkIfAlreadyInUserReservationList(int ouvrageId, int utilisateurId) {
        reservationRepository.findAllByUtilisateurId(utilisateurId).stream()
                .filter(reservation -> reservation.getOuvrageId() == ouvrageId)
                .forEach(reservation -> {
                    throw new ReservationException("La réservation est déjà présente dans la liste de reservations de l'utilisateur.");
                });

        listeAttenteRepository.findAllByUtilisateurId(utilisateurId).stream()
                .filter(listeAttente -> listeAttente.getOuvrageId() == ouvrageId)
                .forEach(listeAttente -> {
                    throw new ReservationException(
                            "La réservation est déjà présente dans la liste d'attente de l'utilisateur.");
                });
    }

    /**
     * Return a loan of a reservation
     *
     * @param reservationId the reservation
     * @return the reservation
     */
    public Reservation returnReservation(int reservationId) {
        return reservationRepository.findById(reservationId).map(r -> {
            if (r.isActive()) {
                r.setActive(false);
                Reservation reservation = reservationRepository.save(r);
                sendNotificationToUserOuvrageAvailable(reservation.getOuvrageId());
                return reservation;
            } else {
                throw new ReservationException("La réservation à déjà était retournée");
            }
        }).orElseThrow(ReservationException::new);
    }

    /**
     * Check if a user is waiting, and send a mail for notify him ouvrage availability
     *
     * @param ouvrageId the ouvrageId of the ouvrage
     */
    private void sendNotificationToUserOuvrageAvailable(@NotNull int ouvrageId) {
        ListeAttente listeAttente = listeAttenteRepository.getByOuvrageIdAndPositionFileAttente(ouvrageId, 1);
        UtilisateurDto utilisateurDto = utilisateurProxy.findUtilisateurById(String.valueOf(listeAttente.getUtilisateurId()));
        OuvrageDto ouvrageDto = ouvrageProxy.getOuvrageById(listeAttente.getOuvrageId());

        // Change status of ListeAttente in DB
        listeAttente.setNotificationSent(true);
        listeAttente.setNotificationTimestamp(new Timestamp(new Date().getTime()));
        listeAttenteRepository.save(listeAttente);

        StringBuilder mailText = new StringBuilder("Bonjour,\n\n").append("L'ouvrage ").append(ouvrageDto.getName())
                .append(" de l'auteur ").append(ouvrageDto.getAuthor()).append(" des éditions ").append(ouvrageDto.getEditor())
                .append("\nest de nouveau disponible dans votre bibliotheque")
                .append(" vous disposez de 48h pour venir le récuperer ou votre reservation sera annulée.");

        mail.sendSimpleMessage(utilisateurDto.getEmail(), "Un ouvrage est de nouveau en stock !", mailText.toString());
    }

    /**
     * Add 4 weeks to a Date
     *
     * @param date Date used as reference
     * @return the new date (4 weeks more than input)
     */
    private Date addFourWeeksToDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.WEEK_OF_MONTH, 4);
        return calendar.getTime();
    }

    /**
     * Get the next return date for the ouvrage
     *
     * @param ouvrageId the ouvrage
     * @return the next return date of the ouvrage
     */
    public Date getNextReturnDate(int ouvrageId) {
     return reservationRepository.findAllByOuvrageId(ouvrageId)
                .stream()
                .filter(Reservation::isActive)
                .map(Reservation::getReservationDateFin)
                .min(Date::compareTo)
                .orElse(null);
    }

    public Number getNumberOfUserForOuvrageId(int ouvrageId) {
        int size = listeAttenteRepository.findAllByOuvrageId(ouvrageId).size();
        if (size > 0) {
            return size;
        } else {
            return null;
        }
    }

    public Number getNumberOfActiveReservationForOuvrageId(int ouvrageId) {
        int size = reservationRepository.findAllByOuvrageId(ouvrageId).size();
        if (size > 0) {
            return size;
        } else {
            return null;
        }
    }

    public void annulerReservationListeAttente(int listeAttenteId) {
        listeAttenteRepository.deleteById(listeAttenteId);
    }
}
