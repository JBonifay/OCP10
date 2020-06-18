package com.openclassrooms.bibliotheque.reservation;

import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.when;

import com.openclassrooms.bibliotheque.reservation.batch.ReservationDateReminderBatch;
import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.service.mail.MailService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.transaction.annotation.Transactional;

@AutoConfigureMockMvc
// @AutoConfigureRestDocs
@SpringBootTest
@Transactional // Each test should have a clean DB before start
public class ReservationDateReminderBatchIT {

    @MockBean
    private MailService      mailService;
    @MockBean
    private UtilisateurProxy utilisateurProxy;
    @MockBean
    private OuvrageProxy     ouvrageProxy;

    @Autowired
    private ReservationDateReminderBatch reservationDateReminderBatch;

    @BeforeEach
    public void init() {
        doNothing().when(mailService).sendSimpleMessage(anyString(), anyString(), anyString());
        when(utilisateurProxy.findUtilisateurById(anyString())).thenReturn(new UtilisateurDto());
        when(ouvrageProxy.getOuvrageById(anyInt())).thenReturn(new OuvrageDto());
    }

    @Test
    public void executeTest() {
        // Assert no error thrown
        reservationDateReminderBatch.execute();
    }


}
