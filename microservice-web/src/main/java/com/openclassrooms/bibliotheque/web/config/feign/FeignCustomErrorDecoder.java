package com.openclassrooms.bibliotheque.web.config.feign;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.io.CharStreams;
import feign.FeignException.Conflict;
import feign.FeignException.Forbidden;
import feign.FeignException.NotFound;
import feign.Response;
import feign.codec.ErrorDecoder;
import java.io.IOException;
import java.io.Reader;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class FeignCustomErrorDecoder implements ErrorDecoder {

    private final ErrorDecoder errorDecoder = new Default();

    @Override
    public Exception decode(String s, Response response) {

        String message = null;
        Reader reader = null;

        try {
            reader = response.body().asReader();
            //Easy way to read the stream and get a String object
            String result = CharStreams.toString(reader);
            //use a Jackson ObjectMapper to convert the Json String into a
            //Pojo
            ObjectMapper mapper = new ObjectMapper();
            //just in case you missed an attribute in the Pojo
            mapper.disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
            //init the Pojo
            ExceptionMessage exceptionMessage = mapper.readValue(result, ExceptionMessage.class);

            message = exceptionMessage.message;

        } catch (IOException e) {
            log.error(e.getMessage());
        } finally {

            //It is the responsibility of the caller to close the stream.
            try {

                if (reader != null) {
                    reader.close();
                }

            } catch (IOException e) {
                log.error(e.getMessage());
            }
        }

        switch (response.status()) {
            case 403:
                return new Forbidden(message, response.request(), null);
            case 404:
                return new NotFound(message, response.request(), null);
            case 409:
                return new Conflict(message, response.request(), null);

                default:
                return errorDecoder.decode(s, response);
        }

    }

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @ToString
    public static class ExceptionMessage {

        private String timestamp;
        private int    status;
        private String error;
        private String message;
        private String path;

    }
}

