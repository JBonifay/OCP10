package com.openclassrooms.bibliotheque.reservation;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;
import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.*;
import static reactor.core.publisher.Mono.when;

import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.reservation.error.ReservationException;
import com.openclassrooms.bibliotheque.reservation.model.ListeAttente;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ListeAttenteRepository;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import com.openclassrooms.bibliotheque.reservation.service.mail.MailService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import org.assertj.core.api.Assert;
import org.joda.time.DateTime;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.provider.EnumSource.Mode;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoRule;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
public class ReservationServiceTest {

    @InjectMocks
    private ReservationService     reservationService;
    @Mock
    private ReservationRepository  reservationRepository;
    @Mock
    private ListeAttenteRepository listeAttenteRepository;
    @Mock
    private OuvrageProxy           ouvrageProxy;
    @Mock
    private UtilisateurProxy       utilisateurProxy;
    @Mock
    private MailService            mailService;
    private DateTime               dateTime;

    @BeforeEach
    public void init() {

    }

    @Test
    public void findAllReservationByUtilisateurId_ExistingUtilisateurId() {
        // Given
        // An existing utilisateurId
        // A reservation returned by the mocked reservationRepository
        int utilisateurId = 1;
        Reservation reservation = new Reservation(1, 1, 1, new Date(System.currentTimeMillis()),
                                                  new Date(System.currentTimeMillis() + 10000), true, false);
        Mockito.when(reservationRepository.findAllByUtilisateurId(anyInt()))
               .thenReturn(Optional.of(Collections.singletonList(reservation)));

        // When
        // findAllReservationByUtilisateurId
        List<Reservation> allReservationByUtilisateurId = reservationService.findAllReservationByUtilisateurId(utilisateurId);

        // Then
        // Should return non modified reservation
        assertThat(allReservationByUtilisateurId.size()).isEqualTo(1);
        assertThat(allReservationByUtilisateurId.get(0)).isEqualTo(reservation);
    }

    @Test
    public void findAllReservationByUtilisateurId_NotExistingUtilisateurId() {
        // Given
        // A not existing utilisateurId
        int utilisateurId = 100;
        Mockito.when(reservationRepository.findAllByUtilisateurId(anyInt())).thenReturn(Optional.of(Collections.emptyList()));

        // When
        // findAllReservationByUtilisateurId
        List<Reservation> allReservationByUtilisateurId = reservationService.findAllReservationByUtilisateurId(utilisateurId);

        // Then
        // Should return an empty List
        assertThat(allReservationByUtilisateurId.size()).isEqualTo(0);
    }

    @Test
    public void extendReservation_ExistingReservation() {
        // Given
        // A reservationId = 1
        int reservationId = 1;
        DateTime actualDateTime = new DateTime(System.currentTimeMillis());
        Reservation reservation = new Reservation(1, 1, 1, actualDateTime.toDate(), actualDateTime.plusWeeks(4).toDate(), true,
                                                  false);

        Mockito.when(reservationRepository.findById(anyInt())).thenReturn(Optional.of(reservation));

        // When
        // Extend this reservation
        reservationService.extendReservation(reservationId);

        // Then
        // reservation should have been updated in database
        // And a new endDate is set from beginning (actualTime + 4 weeks) + 4 weeks of extensions
        ArgumentCaptor<Reservation> userArgumentCaptor = ArgumentCaptor.forClass(Reservation.class);
        verify(reservationRepository).save(userArgumentCaptor.capture());

        Reservation savedReservation = userArgumentCaptor.getValue();
        assertThat(savedReservation.getReservationDateFin()).isEqualTo(actualDateTime.plusWeeks(8).toDate());
    }

    @Test
    public void extendReservation_ExistingReservation_DateTooLate() {
        // Given
        // A reservationId = 1
        int reservationId = 1;
        DateTime actualDateTime = new DateTime(System.currentTimeMillis());
        actualDateTime = actualDateTime.minusMonths(1);

        Reservation reservation = new Reservation(1, 1, 1, actualDateTime.toDate(), actualDateTime.plusWeeks(4).toDate(), true,
                                                  false);

        Mockito.when(reservationRepository.findById(anyInt())).thenReturn(Optional.of(reservation));

        // When
        // Then
        // Should throw ReservationException with message
        assertThatExceptionOfType(ReservationException.class).isThrownBy(() -> {
            reservationService.extendReservation(reservationId);
        }).withMessage("La date de retour est dépassée.");

    }

    @Test
    public void extendReservation_ExistingReservation_AlreadyExtended() {
        // Given
        // A reservationId = 1
        int reservationId = 1;
        DateTime actualDateTime = new DateTime(System.currentTimeMillis());

        Reservation reservation = new Reservation(1, 1, 1, actualDateTime.toDate(), actualDateTime.plusWeeks(4).toDate(), true,
                                                  true);

        Mockito.when(reservationRepository.findById(anyInt())).thenReturn(Optional.of(reservation));

        // When
        // Then
        // Should throw ReservationException with message
        assertThatExceptionOfType(ReservationException.class).isThrownBy(() -> {
            reservationService.extendReservation(reservationId);
        }).withMessage("La réservation à déjà été prolongée");

    }

    @Test
    public void createNewReservationForUser_ValidValues() {
        // Given
        // An existing ouvrageId/utilisateurId
        int ouvrageId = 1;
        int utilisateurId = 1;
        OuvrageDto ouvrageDto = new OuvrageDto();
        UtilisateurDto utilisateurDto = new UtilisateurDto();

        Mockito.when(utilisateurProxy.findUtilisateurById(any())).thenReturn(utilisateurDto);

        Mockito.when(reservationRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(reservationRepository.findAllByOuvrageId(ouvrageId)).thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(ouvrageProxy.getNbrInStock(anyInt())).thenReturn(10);
        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));

        // When
        reservationService.createNewReservationForUser(ouvrageId, utilisateurId);

        // Then
        // A new reservation should be created with good content
        ArgumentCaptor<Reservation> userArgumentCaptor = ArgumentCaptor.forClass(Reservation.class);
        verify(reservationRepository).save(userArgumentCaptor.capture());

        Reservation reservation = userArgumentCaptor.getValue();
        // Equal to 0 because not saved in database (Unit test)
        assertThat(reservation.getReservationId()).isEqualTo(0);
        assertThat(reservation.getOuvrageId()).isEqualTo(1);
        assertThat(reservation.getUtilisateurId()).isEqualTo(1);
        assertThat(reservation.isActive()).isEqualTo(true);
        assertThat(reservation.isDejaProlonge()).isEqualTo(false);

        // Assert that the end date is 4 weeks more than the reservation Timestamp
        assertThat(new DateTime(reservation.getReservationDateFin())).isEqualTo(
                new DateTime(reservation.getReservationDateDebut()).plusWeeks(4));
    }

    @Test
    public void createNewReservationForUser_ValidValues_noStock() {
        // Given
        // An existing ouvrageId/utilisateurId
        int ouvrageId = 1;
        int utilisateurId = 1;
        OuvrageDto ouvrageDto = new OuvrageDto();
        UtilisateurDto utilisateurDto = new UtilisateurDto();

        Mockito.when(utilisateurProxy.findUtilisateurById(any())).thenReturn(utilisateurDto);

        Mockito.when(reservationRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(reservationRepository.findAllByOuvrageId(ouvrageId)).thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(ouvrageProxy.getNbrInStock(anyInt())).thenReturn(10);
        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));

        Mockito.when(ouvrageProxy.removeOneStockItem(anyInt()))
               .thenThrow(new ReservationException("L'ouvrage n'est plus en stock !"));

        // When
        // Then
        assertThatExceptionOfType(ReservationException.class).isThrownBy(() -> {
            reservationService.createNewReservationForUser(ouvrageId, utilisateurId);
        }).withMessage("L'ouvrage n'est plus en stock !");
    }


    @Test
    public void createNewListeAttenteForUser_validValues() {
        // Given
        // An existing ouvrageId/utilisateurId
        int ouvrageId = 1;
        int utilisateurId = 1;
        OuvrageDto ouvrageDto = new OuvrageDto();
        UtilisateurDto utilisateurDto = new UtilisateurDto();

        Mockito.when(utilisateurProxy.findUtilisateurById(any())).thenReturn(utilisateurDto);
        Mockito.when(reservationRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));

        Mockito.when(reservationRepository.findAllByOuvrageId(anyInt())).thenReturn(Optional.of(Collections.emptyList()));

        Mockito.when(ouvrageProxy.getNbrInStock(ouvrageId)).thenReturn(2);

        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));

        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));

        // When
        reservationService.createNewListeAttenteForUser(ouvrageId, utilisateurId);

        // Then
        // A new listeAttente should be created with good content
        ArgumentCaptor<ListeAttente> userArgumentCaptor = ArgumentCaptor.forClass(ListeAttente.class);
        verify(listeAttenteRepository).save(userArgumentCaptor.capture());

        ListeAttente listeAttente = userArgumentCaptor.getValue();
        assertThat(listeAttente.getListeAttenteId()).isEqualTo(0);
        assertThat(listeAttente.getUtilisateurId()).isEqualTo(1);
        assertThat(listeAttente.getOuvrageId()).isEqualTo(1);
        assertThat(listeAttente.getPositionFileAttente()).isEqualTo(1);
        assertThat(listeAttente.isNotificationSent()).isFalse();
        assertThat(listeAttente.getNotificationTimestamp()).isNull();
    }

    @Test
    public void createNewListeAttenteForUser_validValues_StockLimit() {
        // Given
        // An existing ouvrageId/utilisateurId
        int ouvrageId = 1;
        int utilisateurId = 1;
        OuvrageDto ouvrageDto = new OuvrageDto();
        UtilisateurDto utilisateurDto = new UtilisateurDto();

        Mockito.when(utilisateurProxy.findUtilisateurById(any())).thenReturn(utilisateurDto);
        Mockito.when(reservationRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));

        Mockito.when(reservationRepository.findAllByOuvrageId(anyInt())).thenReturn(Optional.of(Collections.emptyList()));

        Mockito.when(ouvrageProxy.getNbrInStock(ouvrageId)).thenReturn(0);

        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));

        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(ouvrageId))
               .thenReturn(Optional.of(Collections.emptyList()));

        // When
        // Then
        assertThatExceptionOfType(ReservationException.class).isThrownBy(() -> {
            reservationService.createNewListeAttenteForUser(ouvrageId, utilisateurId);
        }).withMessage("La liste d'attente est pleine.");
    }

    @Test
    public void checkIfAlreadyInUserReservationList_false() {
        // Given
        int utilisateurId = 1;
        int ouvrageId = 1;
        Mockito.when(reservationRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));

        // When
        // Then
        // No error should be throwed
        assertDoesNotThrow(() -> reservationService.checkIfAlreadyInUserReservationList(ouvrageId, utilisateurId));
    }

    @Test
    public void checkIfAlreadyInUserReservationList_true_reservation() {
        // Given
        int utilisateurId = 1;
        int ouvrageId = 1;
        Mockito.when(reservationRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Arrays.asList(new Reservation(1, 1, 1, new Date(), new Date(), true, false))));
        Mockito.when(listeAttenteRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));

        // When
        // Then
        assertThatExceptionOfType(ReservationException.class).isThrownBy(() -> {
            reservationService.checkIfAlreadyInUserReservationList(ouvrageId, utilisateurId);
        }).withMessage("La réservation est déjà présente dans la liste de reservations de l'utilisateur.");

    }

    @Test
    public void checkIfAlreadyInUserReservationList_true_listeAttente() {
        // Given
        int utilisateurId = 1;
        int ouvrageId = 1;
        Mockito.when(reservationRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Collections.emptyList()));
        Mockito.when(listeAttenteRepository.findAllByUtilisateurId(utilisateurId))
               .thenReturn(Optional.of(Arrays.asList(new ListeAttente(1, 1, 1, 1, false, null))));

        // When
        // Then
        assertThatExceptionOfType(ReservationException.class).isThrownBy(() -> {
            reservationService.checkIfAlreadyInUserReservationList(ouvrageId, utilisateurId);
        }).withMessage("La réservation est déjà présente dans la liste d'attente de l'utilisateur.");
    }


    @Test
    public void returnReservation() {
        // Given
        // A valid reservationId
        int reservationId = 1;
        Reservation reservation = new Reservation(1, 1, 1, new Date(), new Date(), true, false);

        Mockito.when(reservationRepository.findById(reservationId)).thenReturn(Optional.of(reservation));
        Mockito.when(listeAttenteRepository.getByOuvrageIdAndPositionFileAttente(anyInt(), anyInt())).thenReturn(null);
        Mockito.when(reservationRepository.save(any())).thenReturn(reservation);

        // When
        reservationService.returnReservation(reservationId);

        // Then
        // Assert that reservation is no more active
        ArgumentCaptor<Reservation> userArgumentCaptor = ArgumentCaptor.forClass(Reservation.class);
        verify(reservationRepository).save(userArgumentCaptor.capture());

        Reservation savedReservation = userArgumentCaptor.getValue();
        assertThat(savedReservation.isActive()).isFalse();

    }


    @Test
    public void returnReservation_AlreadyReturned() {
        // Given
        // A valid reservationId
        int reservationId = 1;
        Reservation reservation = new Reservation(1, 1, 1, new Date(), new Date(), false, false);

        Mockito.when(reservationRepository.findById(reservationId)).thenReturn(Optional.of(reservation));
        Mockito.when(listeAttenteRepository.getByOuvrageIdAndPositionFileAttente(anyInt(), anyInt())).thenReturn(null);

        // When
        // Then
        assertThatExceptionOfType(ReservationException.class).isThrownBy(() -> {
            reservationService.returnReservation(reservationId);
        }).withMessage("La réservation à déjà était retournée");
    }

    @Test
    public void sendNotificationToUserOuvrageAvailable() {
        // Given
        int ouvrageId = 1;

        Mockito.when(listeAttenteRepository.getByOuvrageIdAndPositionFileAttente(anyInt(), anyInt()))
               .thenReturn(new ListeAttente(1, 1, 1, 1, false, null));

        Mockito.when(utilisateurProxy.findUtilisateurById(anyString()))
               .thenReturn(new UtilisateurDto(1, "test", "test", "test@test.co", "blabla"));

        Mockito.when(ouvrageProxy.getOuvrageById(anyInt()))
               .thenReturn(new OuvrageDto(1, "name", "author", new Date(), "summary", "editor", 10, 5, 2));

        Mockito.when(listeAttenteRepository.save(any())).thenReturn(new ListeAttente());

        Mockito.doNothing().when(mailService).sendSimpleMessage(any(), any(), any());

        // When
        reservationService.sendNotificationToUserOuvrageAvailable(ouvrageId);

        // Then
        ArgumentCaptor<ListeAttente> userArgumentCaptor = ArgumentCaptor.forClass(ListeAttente.class);
        verify(listeAttenteRepository).save(userArgumentCaptor.capture());

        ListeAttente listeAttente = userArgumentCaptor.getValue();
        assertThat(listeAttente.isNotificationSent()).isTrue();
    }

    @Test
    public void addFourWeeksToDate() {
        // Given
        Date date = new Date();
        // When
        Date resultDate = reservationService.addFourWeeksToDate(date);

        assertThat(resultDate).isEqualTo(new DateTime(date).plusWeeks(4).toDate());
    }

    @Test
    public void getNextReturnDate() {
        // Given
        int ouvrageId = 1;
        dateTime = new DateTime(System.currentTimeMillis());

        Mockito.when(reservationRepository.findAllByOuvrageId(anyInt()))
               .thenReturn(Optional.of(
                       Arrays.asList(new Reservation(1, 1, 1, dateTime.toDate(), dateTime.plusWeeks(5).toDate(), true, false),
                                     new Reservation(2, 1, 2, dateTime.toDate(), dateTime.plusWeeks(4).toDate(), true, false))));

        // When
        Date nextReturnDate = reservationService.getNextReturnDate(ouvrageId);

        // Then
        assertThat(nextReturnDate).isEqualTo(dateTime.plusWeeks(4).toDate());
    }

    @Test
    public void getNumberOfUserForOuvrageId_fourth() {
        // Given
        // Existing ouvrageId
        int ouvrageId = 1;

        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(anyInt()))
               .thenReturn(Optional.of(
                       Arrays.asList(new ListeAttente(), new ListeAttente(), new ListeAttente(), new ListeAttente())));

        // When
        Number numberOfUserForOuvrageId = reservationService.getNumberOfUserForOuvrageId(ouvrageId);

        // Then
        assertThat(numberOfUserForOuvrageId).isEqualTo(4);
    }

    @Test
    public void getNumberOfUserForOuvrageId_empty() {
        // Given
        // Existing ouvrageId
        int ouvrageId = 1;

        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(anyInt()))
               .thenReturn(Optional.of(Collections.emptyList()));

        // When
        Number numberOfUserForOuvrageId = reservationService.getNumberOfUserForOuvrageId(ouvrageId);

        // Then
        assertThat(numberOfUserForOuvrageId).isNull();
    }

    @Test
    public void getNumberOfActiveReservationForOuvrageId() {
        // Given
        // Existing ouvrageId
        int ouvrageId = 1;

        Mockito.when(reservationRepository.findAllByOuvrageId(anyInt()))
               .thenReturn(Optional.of(Arrays.asList(new Reservation(1, 1, 1, new Date(), new Date(), true, false),
                                                     new Reservation(2, 2, 2, new Date(), new Date(), true, false),
                                                     new Reservation(3, 3, 3, new Date(), new Date(), true, false))));

        // When
        Number numberOfActiveReservationForOuvrageId = reservationService.getNumberOfActiveReservationForOuvrageId(ouvrageId);

        // Then
        assertThat(numberOfActiveReservationForOuvrageId).isEqualTo(3);
    }

    @Test
    public void getNumberOfActiveReservationForOuvrageId_notActive() {
        // Given
        // Existing ouvrageId
        int ouvrageId = 1;

        Mockito.when(reservationRepository.findAllByOuvrageId(anyInt()))
               .thenReturn(Optional.of(Arrays.asList(new Reservation(1, 1, 1, new Date(), new Date(), false, false),
                                                     new Reservation(2, 2, 2, new Date(), new Date(), false, false),
                                                     new Reservation(3, 3, 3, new Date(), new Date(), false, false))));

        // When
        Number numberOfActiveReservationForOuvrageId = reservationService.getNumberOfActiveReservationForOuvrageId(ouvrageId);

        // Then
        assertThat(numberOfActiveReservationForOuvrageId).isEqualTo(0);
    }

    @Test
    public void annulerReservationListeAttente() {
        // Given
        // existing listeAttenteId
        int listeAttenteId = 1;

        Mockito.when(listeAttenteRepository.findById(anyInt())).thenReturn(Optional.of(new ListeAttente()));

        Mockito.doNothing().when(listeAttenteRepository).deleteById(anyInt());
        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(anyInt())).thenReturn(Optional.of(Collections.emptyList()));

        // When
        // Then
        // No error should be thrown
        assertDoesNotThrow(() -> {
            reservationService.annulerReservationListeAttente(listeAttenteId);
        });
    }


    @Test
    public void updateListeAttente() {
        // Given
        // An arraylist of ListeAttente
        int ouvrageId = 2;
        List<ListeAttente> listeAttentes = new ArrayList<>();
        listeAttentes.add(new ListeAttente(1, 1, 2, 2, false, null));
        listeAttentes.add(new ListeAttente(2, 2, 2, 4, false, null));
        listeAttentes.add(new ListeAttente(3, 3, 2, 6, false, null));

        Mockito.when(listeAttenteRepository.findAllByOuvrageIdOrderByPositionFileAttente(anyInt()))
               .thenReturn(Optional.of(listeAttentes));


        // When
        reservationService.updateListeAttente(ouvrageId);

        // Then
        // Verify that reordering is ok
        ArgumentCaptor<List<ListeAttente>> userArgumentCaptor = ArgumentCaptor.forClass((Class<ArrayList<ListeAttente>>) (Class) ArrayList.class);
        verify(listeAttenteRepository).saveAll(userArgumentCaptor.capture());

        List<ListeAttente> listeAttenteList = userArgumentCaptor.getValue();

        assertThat(listeAttenteList.get(0).getPositionFileAttente()).isEqualTo(1);
        assertThat(listeAttenteList.get(1).getPositionFileAttente()).isEqualTo(2);
        assertThat(listeAttenteList.get(2).getPositionFileAttente()).isEqualTo(3);
    }
}
























