package com.openclassrooms.bibliotheque.reservation;

import static org.assertj.core.api.Assertions.assertThat;

import com.openclassrooms.bibliotheque.reservation.dto.ListeAttenteDto;
import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.ReservationOuvrageInfoDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import java.sql.Timestamp;
import java.util.Date;
import org.junit.jupiter.api.Test;

public class DtoTest {

    @Test
    public void listeAttenteDtoTest() {
        ListeAttenteDto listeAttenteDto = new ListeAttenteDto();
        listeAttenteDto.setListeAttenteId(1);
        listeAttenteDto.setOuvrageId(2);
        listeAttenteDto.setOuvrageName("Test");
        listeAttenteDto.setPositionFileAttente(1);
        listeAttenteDto.setProchaineDateRetour(new Date());
        listeAttenteDto.setNotificationSent(false);
        listeAttenteDto.setNotificationTimestamp(new Timestamp(new Date().getTime()));

        assertThat(listeAttenteDto.getListeAttenteId()).isEqualTo(1);
        assertThat(listeAttenteDto.getOuvrageId()).isEqualTo(2);
        assertThat(listeAttenteDto.getOuvrageName()).isEqualTo("Test");
        assertThat(listeAttenteDto.getPositionFileAttente()).isEqualTo(1);
        assertThat(listeAttenteDto.isNotificationSent()).isEqualTo(false);
    }

    @Test
    public void ouvrageDtoTest() {
        OuvrageDto ouvrageDto = new OuvrageDto();
        ouvrageDto.setOuvrageId(1);
        ouvrageDto.setName("Name");
        ouvrageDto.setReleaseDate(new Date());
        ouvrageDto.setSummary("summary");
        ouvrageDto.setEditor("Editor");
        ouvrageDto.setNumberOfPages(100);
        ouvrageDto.setNotation(5);
        ouvrageDto.setQuantity(10);

        assertThat(ouvrageDto.getOuvrageId()).isEqualTo(1);
        assertThat(ouvrageDto.getName()).isEqualTo("Name");
        assertThat(ouvrageDto.getSummary()).isEqualTo("summary");
        assertThat(ouvrageDto.getEditor()).isEqualTo("Editor");
        assertThat(ouvrageDto.getNumberOfPages()).isEqualTo(100);
        assertThat(ouvrageDto.getNotation()).isEqualTo(5);
        assertThat(ouvrageDto.getQuantity()).isEqualTo(10);
    }

    @Test
    public void reservationOuvrageInfoDtoTest() {
        ReservationOuvrageInfoDto reservationOuvrageInfoDto = new ReservationOuvrageInfoDto();
        reservationOuvrageInfoDto.setReservationId(1);
        reservationOuvrageInfoDto.setOuvrageId(2);
        reservationOuvrageInfoDto.setReservationDateDebut(new java.sql.Date(new Date().getTime()));
        reservationOuvrageInfoDto.setReservationDateFin(new java.sql.Date(new Date().getTime()));
        reservationOuvrageInfoDto.setActive(true);
        reservationOuvrageInfoDto.setDejaProlonge(false);

        assertThat(reservationOuvrageInfoDto.getReservationId()).isEqualTo(1);
        assertThat(reservationOuvrageInfoDto.getOuvrageId()).isEqualTo(2);
        assertThat(reservationOuvrageInfoDto.isActive()).isTrue();
        assertThat(reservationOuvrageInfoDto.isDejaProlonge()).isFalse();
    }

    @Test
    public void utilisateurDto() {
        UtilisateurDto utilisateurDto = new UtilisateurDto();
        utilisateurDto.setId(1);
        utilisateurDto.setEmail("test@test.co");
        utilisateurDto.setFirstName("FirstName");
        utilisateurDto.setLastName("LastName");
        utilisateurDto.setPassword("p@s8W0r#");

        assertThat(utilisateurDto.getId()).isEqualTo(1);
        assertThat(utilisateurDto.getEmail()).isEqualTo("test@test.co");
        assertThat(utilisateurDto.getFirstName()).isEqualTo("FirstName");
        assertThat(utilisateurDto.getLastName()).isEqualTo("LastName");
        assertThat(utilisateurDto.getPassword()).isEqualTo("p@s8W0r#");
    }

}
