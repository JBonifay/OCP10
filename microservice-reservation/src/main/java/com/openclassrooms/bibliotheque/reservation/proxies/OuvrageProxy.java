package com.openclassrooms.bibliotheque.reservation.proxies;

import com.openclassrooms.bibliotheque.reservation.dto.OuvrageDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "microservice-ouvrage")
public interface OuvrageProxy {
    
    @GetMapping("/ouvrage/description/{ouvrageId}")
    OuvrageDto getOuvrageById(@PathVariable int ouvrageId);
    
    @PutMapping("/ouvrage/reserver/{ouvrageId}")
    ResponseEntity<Boolean> removeOneStockItem(@PathVariable int ouvrageId);

    @GetMapping("/ouvrage/info/nbrinstock")
    Integer getNbrInStock(@RequestParam int ouvrageId);
    
}
