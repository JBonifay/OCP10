package com.openclassrooms.bibliotheque.web.config.feign;

import com.openclassrooms.bibliotheque.web.web.exceptions.BadRequestException;
import com.openclassrooms.bibliotheque.web.web.exceptions.EntityNotFoundException;
import com.openclassrooms.bibliotheque.web.web.exceptions.ForbiddenRequestException;
import com.openclassrooms.bibliotheque.web.web.exceptions.GlobalException;
import com.openclassrooms.bibliotheque.web.web.exceptions.InternalServerException;
import feign.Response;
import feign.codec.ErrorDecoder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class FeignCustomErrorDecoder implements ErrorDecoder {

    @Override
    public Exception decode(String methodKey, Response response) {

        switch (response.status()) {
            case 400:
            case 409:
                return new BadRequestException(response.reason());
            case 403:
                return new ForbiddenRequestException(response.reason());
            case 404:
                return new EntityNotFoundException(response.reason());
            case 500:
                return new InternalServerException(response.reason());
            default:
                return new GlobalException(response.reason());
        }

    }
}