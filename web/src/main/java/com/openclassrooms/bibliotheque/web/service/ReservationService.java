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
    
    private final ReservationProxy reservationProxy;
    private final OuvrageProxy     ouvrageProxy;
    
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
            ouvrageReservationBean.setName(ouvrageIdNameBean.getOuvrageName());
            ouvrageReservationBean.setReservationDateDebut(reservationBean.getReservationDateDebut());
            ouvrageReservationBean.setReservationDateFin(reservationBean.getReservationDateFin());
            ouvrageReservationBeans.add(ouvrageReservationBean);
        });
        return ouvrageReservationBeans;
    }
    
    public ResponseEntity<List<OuvrageIdNameBean>> getAllOuvrageByOuvrageIdList(List<Integer> ouvrageIdList) {
        return ouvrageProxy.getAllOuvrageByOuvrageIdList(ouvrageIdList);
    }
    
    public ResponseEntity<List<ReservationBean>> getAllReservationListByUtilisateurId(int utilisateurId) {
        return reservationProxy.getAllReservationListByUtilisateurId(utilisateurId);
    }
    
    public void prolongateReservation(int reservationId) {
        reservationProxy.prolongateReservation(reservationId);
    }
    
}
