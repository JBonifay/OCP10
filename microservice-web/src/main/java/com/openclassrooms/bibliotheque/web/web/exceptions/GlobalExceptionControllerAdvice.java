package com.openclassrooms.bibliotheque.web.web.exceptions;

import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

@RestControllerAdvice
@Slf4j
public class GlobalExceptionControllerAdvice {

    @ExceptionHandler(BadRequestException.class)
    public ModelAndView handleBadRequestException(BadRequestException e, HttpServletResponse response) {
        return new ModelAndView("error/400");
    }

    @ExceptionHandler(ForbiddenRequestException.class)
    public ModelAndView handleForbiddenRequestException(ForbiddenRequestException e, HttpServletResponse response) {
        return new ModelAndView("error/403");
    }

    @ExceptionHandler(EntityNotFoundException.class)
    public ModelAndView handleEntityNotFoundException(EntityNotFoundException e, HttpServletResponse response) {
        return new ModelAndView("error/404");
    }

    @ExceptionHandler(InternalServerException.class)
    public ModelAndView handleInternalErrorException(InternalServerException e, HttpServletResponse response) {
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
