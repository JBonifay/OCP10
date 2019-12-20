package com.openclassrooms.bibliotheque.zuulserver.config;

import com.openclassrooms.bibliotheque.zuulserver.rest.exceptions.InvalidJwtAuthenticationException;
import feign.Response;
import feign.codec.ErrorDecoder;

public class CustomErrorDecoder implements ErrorDecoder {

    @Override
    public Exception decode(String methodKey, Response response) {

        switch (response.status()) {
            case 400:
                return new InvalidJwtAuthenticationException("test");
            default:
                return new Exception("Generic error");
        }
    }
}