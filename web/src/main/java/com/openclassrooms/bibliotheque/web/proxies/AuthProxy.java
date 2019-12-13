package com.openclassrooms.bibliotheque.web.proxies;

import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(contextId = "AuthProxy", value = "zuul-server")
public interface AuthProxy {

}
