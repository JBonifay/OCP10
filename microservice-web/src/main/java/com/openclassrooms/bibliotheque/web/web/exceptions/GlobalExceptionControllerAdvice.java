package com.openclassrooms.bibliotheque.web.web.exceptions;

import feign.FeignException;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

@RestControllerAdvice
@Slf4j
public class GlobalExceptionControllerAdvice {

    @ExceptionHandler(FeignException.BadRequest.class)
    public ModelAndView handleBadRequestException(FeignException.BadRequest e, HttpServletResponse response) {
        return new ModelAndView("error/400");
    }

    @ExceptionHandler(FeignException.Forbidden.class)
    public ModelAndView handleForbiddenRequestException(FeignException.Forbidden e, HttpServletResponse response) {
        return new ModelAndView("error/403");
    }

    @ExceptionHandler(FeignException.NotFound.class)
    public ModelAndView handleEntityNotFoundException(FeignException.NotFound e, HttpServletResponse response) {
        return new ModelAndView("error/404");
    }

    @ExceptionHandler(FeignException.InternalServerError.class)
    public ModelAndView handleInternalErrorException(FeignException.InternalServerError e, HttpServletResponse response) {
        return new ModelAndView("error");
    }

    @ExceptionHandler(GlobalException.class)
    public ModelAndView handleGlobalErrorException(GlobalException e, HttpServletResponse response) {
        return new ModelAndView("error");
    }

    @ExceptionHandler(MissingServletRequestParameterException.class)
    public ModelAndView handleMissingParams(MissingServletRequestParameterException ex) {
        log.error("Missing parameter in request: " + ex.getMessage() + " ... ");
        return new ModelAndView("error");
    }

}
