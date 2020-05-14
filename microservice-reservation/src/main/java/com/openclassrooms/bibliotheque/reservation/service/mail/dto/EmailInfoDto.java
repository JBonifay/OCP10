package com.openclassrooms.bibliotheque.reservation.service.mail.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmailInfoDto {

    private String firstName;
    private String lastName;
    private String email;
    private String title;
    private String editor;
    private String endDate;
}
