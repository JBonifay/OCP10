package com.openclassrooms.bibliotheque.reservation.proxies;

import com.openclassrooms.bibliotheque.reservation.beans.OuvrageBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

@FeignClient(value = "microservice-ouvrage")
public interface OuvrageProxy {
    
    @GetMapping("/ouvrage/{ouvrageId}/description")
    OuvrageBean getOuvrageById(@PathVariable int ouvrageId);
    
    @PutMapping("/ouvrage/{ouvrageId}/reserver")
    ResponseEntity<Void> removeOneStockItem(@PathVariable int ouvrageId);
    
}