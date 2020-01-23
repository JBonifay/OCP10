package com.openclassrooms.bibliotheque.web.config.error;

import com.openclassrooms.bibliotheque.web.web.exceptions.EntityNotFoundException;
import feign.FeignException;
import feign.FeignException.NotFound;
import feign.Response;
import feign.codec.ErrorDecoder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class CustomErrorDecoder implements ErrorDecoder {

    @Override
    public Exception decode(String methodKey, Response response) {

        switch (response.status()) {
            case 400:
                log.error("Status code " + response.status() + ", methodKey = " + methodKey);

            case 404: {
                log.error("Error took place when using Feign client to send HTTP Request. Status code " + response.status()
                        + ", methodKey = " + methodKey);
                return new EntityNotFoundException(response.reason());
            }

            default:
                return new FeignException.NotFound(response.reason(), response.request(), null);
        }

    }
}