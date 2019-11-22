package com.openclassrooms.reservation.controller;

import com.openclassrooms.reservation.model.Reservation;
import com.openclassrooms.reservation.service.ReservationService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;



}
