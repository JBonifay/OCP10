package com.openclassrooms.proxies;

import com.openclassrooms.beans.LivreBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "microservice-livre", url = "localhost:9001")
public interface LivreProxy {

    @GetMapping("/livre")
    Page<LivreBean> getLivreList(Pageable pageable);

}

