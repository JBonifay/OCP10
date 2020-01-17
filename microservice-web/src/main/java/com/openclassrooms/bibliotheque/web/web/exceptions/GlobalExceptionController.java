package com.openclassrooms.bibliotheque.web.web.exceptions;

import feign.FeignException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

@RestControllerAdvice
public class GlobalExceptionController {

    @ExceptionHandler(FeignException.class)
    public ModelAndView handleFeignStatusException(FeignException e, HttpServletResponse response) {
        return new ModelAndView("404");
    }


}
