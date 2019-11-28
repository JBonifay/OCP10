package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageDescriptionBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageStockBean;
import java.util.List;
import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(contextId = "microservice-ouvrage", name = "zuul-server")
@RibbonClient(name = "microservice-ouvrage")
public interface OuvrageProxy {

    String MICROSERVICE_OUVRAGE = "/microservice-ouvrage";

    @GetMapping(MICROSERVICE_OUVRAGE + "/ouvrage")
    ResponseEntity<RestPageImpl<OuvrageStockBean>> getAllOuvrageListByPage(Pageable pageable);

    @GetMapping(MICROSERVICE_OUVRAGE + "/ouvrage/{ouvrageId}")
    ResponseEntity<OuvrageDescriptionBean> getOuvrageDescriptionById(@PathVariable int ouvrageId);

    @GetMapping(MICROSERVICE_OUVRAGE + "/ouvrage/reservation/{ouvrageId}")
    ResponseEntity<OuvrageIdNameBean> getOuvrageIdNameBean(@PathVariable int ouvrageId);

    @PostMapping(MICROSERVICE_OUVRAGE + "/ouvrage/allouvragebyouvrageidlist")
    ResponseEntity<List<OuvrageIdNameBean>> getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> list);

}
