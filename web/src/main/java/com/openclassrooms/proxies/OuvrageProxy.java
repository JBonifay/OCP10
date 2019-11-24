package com.openclassrooms.proxies;

import com.openclassrooms.beans.ouvrage.OuvrageDescriptionBean;
import com.openclassrooms.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.beans.ouvrage.OuvrageStockBean;
import com.openclassrooms.beans.reservation.ReservationBean;
import feign.Body;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name = "microservice-ouvrage", url = "localhost:9001")
public interface OuvrageProxy {

    @GetMapping("/ouvrage")
    RestPageImpl<OuvrageStockBean> getAllOuvrageListByPage(Pageable pageable);

    @GetMapping("/ouvrage/{ouvrageId}")
    OuvrageDescriptionBean getOuvrageDescriptionById(@PathVariable int ouvrageId);

    @GetMapping("/ouvrage/reservation/{ouvrageId}")
    OuvrageIdNameBean getOuvrageIdNameBean(@PathVariable int ouvrageId);

}

