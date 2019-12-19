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

@FeignClient(value = "microservice-ouvrage")
public interface OuvrageProxy {
    
    @GetMapping("/tout_les_ouvrages")
    ResponseEntity<RestPageImpl<OuvrageStockBean>> getAllOuvrageListByPage(Pageable pageable);
    
    @GetMapping("/ouvrage/ouvrage_description_{ouvrageId}")
    ResponseEntity<OuvrageDescriptionBean> getOuvrageDescriptionById(@PathVariable int ouvrageId);
    
    @GetMapping("/ouvrage/reservation/{ouvrageId}")
    ResponseEntity<OuvrageIdNameBean> getOuvrageIdNameBean(@PathVariable int ouvrageId);
    
    @PostMapping("/ouvrage/liste_de_tout_les_ouvrages")
    ResponseEntity<List<OuvrageIdNameBean>> getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> list);
    
}
