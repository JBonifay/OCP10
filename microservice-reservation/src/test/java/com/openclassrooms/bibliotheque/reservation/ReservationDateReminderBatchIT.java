package com.openclassrooms.bibliotheque.reservation;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.anyString;

import com.openclassrooms.bibliotheque.reservation.batch.ReservationDateReminderBatch;
import com.openclassrooms.bibliotheque.reservation.service.mail.MailService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.transaction.annotation.Transactional;

@AutoConfigureMockMvc
// @AutoConfigureRestDocs
@SpringBootTest
@Transactional // Each test should have a clean DB before start
public class ReservationDateReminderBatchIT {

    @MockBean
    private JavaMailSender javaMailSender = new JavaMailSenderImpl();

    @MockBean
    private MailService mailService = new MailService(javaMailSender);

    @Autowired
    private ReservationDateReminderBatch reservationDateReminderBatch;


    @BeforeEach
    public void init() {
        Mockito.doNothing().when(mailService).sendSimpleMessage(anyString(), anyString(), anyString());
    }

    @Test
    public void executeTest() {
        reservationDateReminderBatch.execute();
    }


}
