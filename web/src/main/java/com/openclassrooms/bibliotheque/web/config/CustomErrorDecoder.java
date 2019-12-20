package com.openclassrooms.bibliotheque.web.config;

import feign.Response;
import feign.codec.ErrorDecoder;

public class CustomErrorDecoder implements ErrorDecoder {

    @Override
    public Exception decode(String methodKey, Response response) {

        switch (response.status()) {
            case 400:
                return null;
            default:
                return new Exception("Generic error");
        }
    }
}