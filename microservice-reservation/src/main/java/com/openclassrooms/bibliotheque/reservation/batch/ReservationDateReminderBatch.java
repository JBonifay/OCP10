package com.openclassrooms.bibliotheque.reservation.batch;

import com.openclassrooms.bibliotheque.reservation.mail.Mail;
import com.openclassrooms.bibliotheque.reservation.mail.dto.EmailInfoDto;
import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import com.openclassrooms.bibliotheque.reservation.dto.UtilisateurDto;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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
public class ReservationDateReminderBatch {

    private static final String                MAIL_SUBJECT = "Vous avez dépassé la date de retour de votre prêt !";
    private final        Mail                  mail;
    private final        ReservationRepository reservationRepository;
    private final        UtilisateurProxy      utilisateurProxy;
    private final        OuvrageProxy          ouvrageProxy;

    /**
     * Set batch task each days at 00
     */
    @Scheduled(cron = "0 0 12 * * ?")
    public void execute() {
        log.info("Starting batch task");

        List<Reservation> reservationList = reservationRepository.findAllByReservationDateFinBeforeAndActiveIsTrue(new Date());

        log.info("Found " + reservationList.size() + " entities");

        ArrayList<EmailInfoDto> emailsToSend = new ArrayList<>();

        if (reservationList.size() > 0) {
            reservationList.forEach(reservation -> {
                try {

                    UtilisateurDto utilisateurDto = utilisateurProxy
                            .findUtilisateurById(String.valueOf(reservation.getUtilisateurId()));

                    OuvrageDto ouvrageDto = ouvrageProxy.getOuvrageById(reservation.getOuvrageId());

                    log.info("Add " + utilisateurDto.getEmail() + " " + ouvrageDto.getName() + " " + ouvrageDto.getEditor()
                            + " to the tasks list");

                    emailsToSend.add(new EmailInfoDto(utilisateurDto.getFirstName(), utilisateurDto.getLastName(),
                            utilisateurDto.getEmail(), ouvrageDto.getName(), ouvrageDto.getEditor(),
                            reservation.getReservationDateFin().toString()));

                } catch (Exception e) {
                    log.error(e.getMessage());
                }
            });
        }

        prepareMails(emailsToSend);

        log.info("End of batch service");
    }

    public void prepareMails(List<EmailInfoDto> emailList) {
        emailList.forEach(e -> {
            StringBuilder sb = new StringBuilder();
            sb.append("Bonjour ").append(e.getFirstName()).append(" ").append(e.getLastName()).append(",\n")
                    .append("Vous avez dépassé la date de retour de votre prêt pour l'ouvrage:\n").append(e.getTitle())
                    .append(" des éditions ").append(e.getEditor()).append("\n\n")
                    .append("Merci de le rammener au plus vite !\n\n").append("La bibliotheque municipale");

            mail.sendSimpleMessage(e.getEmail(), MAIL_SUBJECT, sb.toString());
        });
    }

}
