package com.openclassrooms.proxies;

import com.openclassrooms.beans.OuvrageBean;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "microservice-ouvrage", url = "localhost:9001")
public interface OuvrageProxy {

    @GetMapping("/ouvrage")
    List<OuvrageBean> getAllOuvrageListByPage(Pageable pageable);

}

