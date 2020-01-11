package com.openclassrooms.bibliotheque.reservation.proxies;

import com.openclassrooms.bibliotheque.reservation.beans.OuvrageBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

@FeignClient(name = "ouvrage-proxy", url = "http://localhost:9103", path = "/microservice-ouvrage")
public interface OuvrageProxy {
    
    @GetMapping("/ouvrage/{ouvrageId}/description")
    ResponseEntity<OuvrageBean> getOuvrageById(@PathVariable int ouvrageId);
    
    @PutMapping("/ouvrage/{ouvrageId}/reserver")
    ResponseEntity removeOneStockItem(@PathVariable int ouvrageId);
    
}
