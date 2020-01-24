package com.openclassrooms.bibliotheque.web.service;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageReservationBean;
import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import com.openclassrooms.bibliotheque.web.proxies.OuvrageProxy;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {
    
    public List<OuvrageReservationBean> createOuvrageReservationBean(List<ReservationBean> reservationBeanList,
                                                                     List<OuvrageIdNameBean> ouvrageIdNameBeanList) {
        List<OuvrageReservationBean> ouvrageReservationBeans = new ArrayList<>();
        ouvrageIdNameBeanList.forEach(ouvrageIdNameBean -> {
            ReservationBean reservationBean = new ReservationBean();

            for (ReservationBean r : reservationBeanList) {
                if (r.getOuvrageId() == ouvrageIdNameBean.getOuvrageId()) {
                    reservationBean = r;
                }
            }
            OuvrageReservationBean ouvrageReservationBean = new OuvrageReservationBean();
            ouvrageReservationBean.setReservationId(reservationBean.getReservationId());
            ouvrageReservationBean.setOuvrageId(ouvrageIdNameBean.getOuvrageId());
            ouvrageReservationBean.setName(ouvrageIdNameBean.getName());
            ouvrageReservationBean.setAuthor(ouvrageIdNameBean.getAuthor());
            ouvrageReservationBean.setNotation(ouvrageIdNameBean.getNotation());
            ouvrageReservationBean.setReservationDateDebut(reservationBean.getReservationDateDebut());
            ouvrageReservationBean.setReservationDateFin(reservationBean.getReservationDateFin());
            ouvrageReservationBean.setAlreadyProlonger(reservationBean.isDejaProlonge());
            ouvrageReservationBeans.add(ouvrageReservationBean);
        });
        return ouvrageReservationBeans;
    }
    
}
