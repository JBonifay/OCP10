package com.openclassrooms.beans;

import java.util.Date;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LivreBean {

    private int id;
    private String name;
    private String author;
    private Date releaseDate;

}
