package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageDescriptionBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageIdNameBean;
import com.openclassrooms.bibliotheque.web.beans.ouvrage.OuvrageStockBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(contextId = "OuvrageProxy", value = "zuul-server")
public interface OuvrageProxy {

    @GetMapping("/ouvrage")
    ResponseEntity<RestPageImpl<OuvrageStockBean>> getAllOuvrageListByPage(Pageable pageable);

    @GetMapping("/ouvrage/{ouvrageId}")
    ResponseEntity<OuvrageDescriptionBean> getOuvrageDescriptionById(@PathVariable int ouvrageId);

    @GetMapping("/ouvrage/reservation/{ouvrageId}")
    ResponseEntity<OuvrageIdNameBean> getOuvrageIdNameBean(@PathVariable int ouvrageId);

    @PostMapping("/ouvrage/allouvragebyouvrageidlist")
    ResponseEntity<List<OuvrageIdNameBean>> getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> list);

}
