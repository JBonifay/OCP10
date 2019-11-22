package com.openclassrooms.proxies;

import com.openclassrooms.beans.ReservationOuvrageBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "microservice-reservation", url = "localhost:9001")
public interface ReservationProxy {

    @GetMapping("/reservation")
    RestPageImpl<ReservationOuvrageBean> getAllReservationListByPage(Pageable pageable);


}

