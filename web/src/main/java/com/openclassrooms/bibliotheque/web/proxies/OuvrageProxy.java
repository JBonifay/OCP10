package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageDescriptionBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageStockBean;
import com.openclassrooms.bibliotheque.web.beans.reservation.ReservationBean;
import com.openclassrooms.bibliotheque.web.dto.OuvrageReservationDto;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name = "microservice-ouvrage", url = "localhost:9001")
public interface OuvrageProxy {

    @GetMapping("/ouvrage")
    RestPageImpl<OuvrageStockBean> getAllOuvrageListByPage(Pageable pageable);

    @GetMapping("/ouvrage/{ouvrageId}")
    ResponseEntity<OuvrageDescriptionBean> getOuvrageDescriptionById(@PathVariable int ouvrageId);

    @GetMapping("/ouvrage/reservation/{ouvrageId}")
    OuvrageIdNameBean getOuvrageIdNameBean(@PathVariable int ouvrageId);

    @PostMapping("/ouvrage")
    ResponseEntity getAllOuvrageByReservationList(@RequestBody List<Integer> list);

}
