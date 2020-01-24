package com.openclassrooms.bibliotheque.reservation.batch.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmailInfoDto {

    @NonNull String firstName;
    @NonNull String lastName;
    @NonNull String email;
    @NonNull String title;
    @NonNull String editor;
    @NonNull String endDate;
}
