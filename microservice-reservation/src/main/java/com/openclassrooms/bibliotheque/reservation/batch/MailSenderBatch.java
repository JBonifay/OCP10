package com.openclassrooms.bibliotheque.reservation.batch;

import com.openclassrooms.bibliotheque.reservation.batch.dto.EmailInfoDto;
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
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
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
public class MailSenderBatch {

    private final JavaMailSender        emailSender;
    private final ReservationRepository reservationRepository;
    private final UtilisateurProxy      utilisateurProxy;
    private final OuvrageProxy          ouvrageProxy;

    /**
     * Set batch task each days at 00
     */
    @Scheduled(cron = " 0 0 * * * ?")
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
            sb.append("Bonjour " + e.getFirstName() + " " + e.getLastName() + ",\n");
            sb.append("Vous avez dépassé la date de retour de votre prêt pour l'ouvrage:\n");
            sb.append(e.getTitle() + " des éditions " + e.getEditor() + "\n\n");
            sb.append("Merci de le rammener au plus vite !\n\n");
            sb.append("La bibliotheque municipale");

            this.sendSimpleMessage(e.getEmail(), sb.toString());
        });
    }

    private void sendSimpleMessage(String to, String text) {

        log.info("Sending email :");
        log.info(text);

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject("Vous avez dépassé la date de retour de votre prêt !");
        message.setText(text);
        emailSender.send(message);

        log.info("Mail sent");
    }
}