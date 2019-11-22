package com.openclassrooms.proxies;

import com.openclassrooms.beans.ouvrage.OuvrageDescriptionBean;
import com.openclassrooms.beans.ouvrage.OuvrageStockBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "microservice-ouvrage", url = "localhost:9001")
public interface OuvrageProxy {

    @GetMapping("/ouvrage")
    RestPageImpl<OuvrageStockBean> getAllOuvrageListByPage(Pageable pageable);

    @GetMapping("/ouvrage/{id}")
    OuvrageDescriptionBean getOuvrageDescriptionById(@PathVariable String id);

}

