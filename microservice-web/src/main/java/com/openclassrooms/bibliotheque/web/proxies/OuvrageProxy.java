package com.openclassrooms.bibliotheque.web.proxies;

import com.openclassrooms.bibliotheque.web.dto.filtrage.OuvrageRechercheBody;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageDescriptionDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageIdNameDto;
import com.openclassrooms.bibliotheque.web.dto.ouvrage.OuvrageStockDto;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name = "ouvrage-proxy", url = "${feign.zuul.url}", path = "/microservice-ouvrage")
public interface OuvrageProxy {
    
    @PostMapping("/ouvrages/recherche")
    RestPageImpl<OuvrageStockDto> getAllOuvrageListByPage(@RequestBody OuvrageRechercheBody ouvrageRechercheBody);
    
    @GetMapping("/ouvrage/{ouvrageId}/description")
    OuvrageDescriptionDto getOuvrageDescriptionById(@PathVariable int ouvrageId);
    
    @PostMapping("/ouvrages")
    List<OuvrageIdNameDto> getAllOuvrageByOuvrageIdList(@RequestBody List<Integer> list);
    
}
