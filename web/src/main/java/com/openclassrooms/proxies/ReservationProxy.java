package com.openclassrooms.proxies;

import com.openclassrooms.beans.reservation.ReservationBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "microservice-reservation", url = "localhost:9002")
public interface ReservationProxy {

    @GetMapping("/reservation/{id}")
    List<ReservationBean> getAllReservationListByUtilisateurId(@PathVariable String id);


}

