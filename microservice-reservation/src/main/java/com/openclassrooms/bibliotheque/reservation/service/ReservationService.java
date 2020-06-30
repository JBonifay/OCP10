package com.openclassrooms.bibliotheque.reservation.service;

import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.reservation.error.ListeAttenteException;
import com.openclassrooms.bibliotheque.reservation.error.ReservationException;
import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ListeAttenteRepository;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import com.openclassrooms.bibliotheque.reservation.service.mail.MailService;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.IntStream;
import javax.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
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
    private final MailService            mailService;

    /**
     * List all reservation fo the user
     *
     * @param utilisateurId the user userId
     * @return a list of reservation
     */
    public List<Reservation> findAllReservationByUtilisateurId(int utilisateurId) {
        return reservationRepository.findAllByUtilisateurId(utilisateurId).orElse(Collections.emptyList());
    }

    public List<ListeAttente> findAllListeAttenteByUtilisateurId(int utilisateurId) {
        return listeAttenteRepository.findAllByUtilisateurId(utilisateurId).orElse(Collections.emptyList());
    }

    /**
     * Extend the reservation to 4 weeks more
     *
     * @param reservationId the reservation to extend
     */
    public void extendReservation(int reservationId) throws ReservationException {
        Reservation r = reservationRepository.findById(reservationId).orElseThrow(ReservationException::new);

        if (!r.isDejaProlonge()) {
            if (!r.getReservationDateFin().before(new Date())) {
                r.setReservationDateFin(addFourWeeksToDate(r.getReservationDateFin()));
                r.setDejaProlonge(true);
                reservationRepository.save(r);
            } else {
                throw new ReservationException("La date de retour est dépassée.");
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
        checkIfUtilisateurExist(utilisateurId);
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

    private void checkIfUtilisateurExist(int utilisateurId) {
        utilisateurProxy.findUtilisateurById(String.valueOf(utilisateurId));
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
        checkIfUtilisateurExist(utilisateurId);
        checkIfAlreadyInUserReservationList(ouvrageId, utilisateurId);

        // Count how many ouvrage exist
        int initialStock = reservationRepository.findAllByOuvrageId(ouvrageId)
                .orElse(Collections.emptyList())
                .size() + ouvrageProxy.getNbrInStock(ouvrageId);

        int enAttente = listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId)
                .orElse(Collections.emptyList())
                .size();

        if (enAttente >= (initialStock * 2)) {
            throw new ReservationException("La liste d'attente est pleine.");
        }

        int position = listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId)
                .orElse(Collections.emptyList())
                .stream()
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

        reservationRepository.findAllByUtilisateurId(utilisateurId)
                .flatMap(reservations -> reservations.stream()
                        .filter(reservation -> reservation.getOuvrageId() == ouvrageId)
                        .findAny())
                .ifPresent(reservation -> {
                    throw new ReservationException("La réservation est déjà présente dans la liste de reservations de l'utilisateur.");
                });

        listeAttenteRepository.findAllByUtilisateurId(utilisateurId)
                .flatMap(listeAttentes -> listeAttentes.stream()
                        .filter(listeAttente -> listeAttente.getOuvrageId() == ouvrageId)
                        .findAny())
                .ifPresent(listeAttente -> {
                    throw new ReservationException("La réservation est déjà présente dans la liste d'attente de l'utilisateur.");
                });
    }

    /**
     * Return a loan of a reservation
     *
     * @param reservationId the reservation
     * @return the reservation
     */
    public Reservation returnReservation(int reservationId) throws ReservationException {
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
    public void sendNotificationToUserOuvrageAvailable(@NotNull int ouvrageId) {
        Optional.ofNullable(listeAttenteRepository.getByOuvrageIdAndPositionFileAttente(ouvrageId, 1)).ifPresent(listeAttente -> {
            UtilisateurDto utilisateurDto = utilisateurProxy.findUtilisateurById(String.valueOf(listeAttente.getUtilisateurId()));
            OuvrageDto ouvrageDto = ouvrageProxy.getOuvrageById(listeAttente.getOuvrageId());

            // Change status of ListeAttente in DB
            listeAttente.setNotificationSent(true);
            listeAttente.setNotificationTimestamp(new Timestamp(new Date().getTime()));
            listeAttenteRepository.save(listeAttente);

            StringBuilder mailText = new StringBuilder("Bonjour,\n\n").append("L'ouvrage ")
                    .append(ouvrageDto.getName())
                    .append(" de l'auteur ")
                    .append(ouvrageDto.getAuthor())
                    .append(" des éditions ")
                    .append(ouvrageDto.getEditor())
                    .append("\nest de nouveau disponible dans votre bibliotheque")
                    .append(" vous disposez de 48h pour venir le récuperer ou votre reservation sera annulée.");

            mailService.sendSimpleMessage(utilisateurDto.getEmail(), "Un ouvrage est de nouveau en stock !", mailText.toString());
        });
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
    public Date getNextReturnDate(int ouvrageId) throws ReservationException {
        return reservationRepository.findAllByOuvrageId(ouvrageId)
                .orElseThrow(() -> new ReservationException("Aucune reservation en cours pour cet ouvrage."))
                .stream()
                .filter(Reservation::isActive)
                .map(Reservation::getReservationDateFin)
                .min(Date::compareTo)
                .orElse(null);
    }

    public Number getNumberOfUserForOuvrageId(int ouvrageId) throws ListeAttenteException {
        int size = listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId)
                .orElse(Collections.emptyList())
                .size();

        if (size > 0) {
            return size;
        } else {
            return null;
        }
    }

    public Number getNumberOfActiveReservationForOuvrageId(int ouvrageId) throws ReservationException {
        return (int) reservationRepository.findAllByOuvrageId(ouvrageId)
                                              .orElseThrow(ReservationException::new)
                                              .stream()
                                              .filter(Reservation::isActive)
                                              .count();
    }

    public void annulerReservationListeAttente(int listeAttenteId) throws ListeAttenteException {
        ListeAttente listeAttente = listeAttenteRepository.findById(listeAttenteId).orElseThrow(ListeAttenteException::new);
        listeAttenteRepository.deleteById(listeAttenteId);
        updateListeAttente(listeAttente.getOuvrageId());
    }

    public Optional<List<ListeAttente>> getAllByNotificationSentIsTrue() {
        return listeAttenteRepository.getAllByNotificationSentIsTrue();
    }

    public void updateListeAttente(int ouvrageId) throws ListeAttenteException {
        List<ListeAttente> listeAttenteList = listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId)
                .orElse(Collections.emptyList());

        IntStream.range(0, listeAttenteList.size()).forEach(i -> listeAttenteList.get(i).setPositionFileAttente(i + 1));
        listeAttenteRepository.saveAll(listeAttenteList);

    }
}
