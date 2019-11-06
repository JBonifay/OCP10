package com.openclassrooms.proxies;

import com.openclassrooms.beans.LivreBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "microservice-livre", url = "localhost:9001")
public interface LivreProxy {

    @GetMapping("/livre")
    List<LivreBean> getLivreList();

}

