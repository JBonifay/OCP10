package com.openclassrooms.bibliotheque.reservation.batch;

import com.openclassrooms.bibliotheque.reservation.error.ListeAttenteException;
import com.openclassrooms.bibliotheque.reservation.repository.ListeAttenteRepository;
import com.openclassrooms.bibliotheque.reservation.service.ReservationService;
import java.sql.Timestamp;
import java.util.concurrent.TimeUnit;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.task.TaskExecutor;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Batch Class used to send a mail to user who have forgot to give back the ouvrage
 */
@Component
@RequiredArgsConstructor
@Slf4j
@EnableScheduling
public class ListeAttenteBatch {

    private static final long               DURATION_HOUR = 48;
    private final        ReservationService reservationService;

    /**
     * Batch task used to check each hours if reservation past the delay Delete reservation if delay is past
     */
    @Scheduled(cron = "*/10 * * * * ?")
    public void execute() {
        log.info("Starting batch task");

        reservationService.getAllByNotificationSentIsTrue().ifPresent(listeAttentes -> listeAttentes.forEach(listeAttente -> {
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            Timestamp listeAttentePlusDurationTime = new Timestamp(listeAttente.getNotificationTimestamp().getTime() + TimeUnit.HOURS.toMillis(DURATION_HOUR));
            if (currentTime.after(listeAttentePlusDurationTime)) {
                try {
                    reservationService.annulerReservationListeAttente(listeAttente.getListeAttenteId());
                } catch (ListeAttenteException e) {
                    log.error(e.getMessage());
                }
                reservationService.sendNotificationToUserOuvrageAvailable(listeAttente.getOuvrageId());
            }
        }));

        log.info("End of batch service");

    }


}
