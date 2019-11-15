package com.openclassrooms.beans;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OuvrageBean {

    private int id;
    private String name;
    private String author;
    private Date releaseDate;

}
