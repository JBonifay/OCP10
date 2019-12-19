package com.openclassrooms.bibliotheque.reservation.proxies;

import com.openclassrooms.bibliotheque.reservation.beans.OuvrageBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

@FeignClient("microservice-ouvrage")
public interface OuvrageProxy {
    
    @GetMapping("/ouvrage/ouvrage_description_{ouvrageId}")
    ResponseEntity<OuvrageBean> getOuvrageById(@PathVariable int ouvrageId);
    
    @PutMapping("/ouvrage/enlever_du_stock{ouvrageId}")
    ResponseEntity removeOneStockItem(@PathVariable int ouvrageId);
    
}
