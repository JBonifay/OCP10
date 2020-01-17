package com.openclassrooms.bibliotheque.reservation.batch.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmailInfoBean {

    @NonNull String firstName;
    @NonNull String lastName;
    @NonNull String email;
    @NonNull String title;
    @NonNull String editor;
    @NonNull String endDate;
}
