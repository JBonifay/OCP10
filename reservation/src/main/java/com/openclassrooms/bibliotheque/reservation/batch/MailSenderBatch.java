package com.openclassrooms.bibliotheque.reservation.batch;

import com.openclassrooms.bibliotheque.reservation.batch.bean.EmailInfoBean;
import com.openclassrooms.bibliotheque.reservation.beans.OuvrageBean;
import com.openclassrooms.bibliotheque.reservation.beans.UtilisateurBean;
import com.openclassrooms.bibliotheque.reservation.model.Reservation;
import com.openclassrooms.bibliotheque.reservation.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.reservation.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.reservation.repository.ReservationRepository;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.batch.repeat.RepeatException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

        ArrayList<EmailInfoBean> emailsToSend = new ArrayList<>();

        if (reservationList.size() > 0) {
            for (Reservation reservation : reservationList) {
                UtilisateurBean utilisateurBean;
                OuvrageBean ouvrageBean;

                ResponseEntity<UtilisateurBean> utilisateurBeanResponseEntity =
                        utilisateurProxy.findUtilisateurById(String.valueOf(reservation.getUtilisateurId()));

                ResponseEntity<OuvrageBean> ouvrageBeanResponseEntity =
                        ouvrageProxy.getOuvrageById(reservation.getOuvrageId());

                if (utilisateurBeanResponseEntity.getStatusCode() != HttpStatus.OK || ouvrageBeanResponseEntity.getStatusCode() != HttpStatus.OK) {
                    throw new RepeatException("Could not get information");
                }

                if (utilisateurBeanResponseEntity.getBody() == null || ouvrageBeanResponseEntity.getBody() == null) {
                    throw new RepeatException("Information from User or Ouvrage are Null");
                }

                utilisateurBean = utilisateurBeanResponseEntity.getBody();
                ouvrageBean = ouvrageBeanResponseEntity.getBody();

                log.info("Add " + utilisateurBean.getEmail() + " " + ouvrageBean.getName() + " " + ouvrageBean.getEditor() + " to the tasks list");

                emailsToSend.add(new EmailInfoBean(utilisateurBean.getFirstName(), utilisateurBean.getLastName(),
                        utilisateurBean.getEmail(), ouvrageBean.getName(), ouvrageBean.getEditor(),
                        reservation.getReservationDateFin().toString()));
            }
        }

        this.prepareMails(emailsToSend);

        log.info("End of batch service");
    }

    public void prepareMails(List<EmailInfoBean> emailList) {
        for (EmailInfoBean e : emailList) {

            StringBuilder sb = new StringBuilder();
            sb.append("Bonjour " + e.getFirstName() + " " + e.getLastName() + ",\n");
            sb.append("Vous avez dépassé la date de retour de votre prêt pour l'ouvrage:\n");
            sb.append(e.getTitle() + " des éditions " + e.getEditor() +"\n\n");
            sb.append("Merci de le rammener au plus vite !\n\n");
            sb.append("La bibliotheque municipale");

            this.sendSimpleMessage(e.getEmail(), sb.toString());
        }
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