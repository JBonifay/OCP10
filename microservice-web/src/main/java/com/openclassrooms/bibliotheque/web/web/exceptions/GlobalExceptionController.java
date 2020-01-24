package com.openclassrooms.bibliotheque.web.web.exceptions;

import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

@RestControllerAdvice
public class GlobalExceptionController {

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


}
