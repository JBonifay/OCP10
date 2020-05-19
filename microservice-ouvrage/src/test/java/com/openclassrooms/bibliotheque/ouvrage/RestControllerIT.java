package com.openclassrooms.bibliotheque.ouvrage;

import static org.assertj.core.api.Assertions.assertThat;

import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageDescriptionDto;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class RestControllerIT {

    @Autowired
    private TestRestTemplate restTemplate;


    @Test
    public void getDescriptionForExistingOuvrage() {
        // Given existing ouvrageId = 1

        // When send request with ouvrageId = 1
        ResponseEntity<OuvrageDescriptionDto> ouvrageDescriptionDtoResponseEntity = restTemplate
                .getForEntity("/ouvrage/description/1", OuvrageDescriptionDto.class);

        // Then ouvrage 1 is valid
        assertThat(ouvrageDescriptionDtoResponseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);

        OuvrageDescriptionDto resource = ouvrageDescriptionDtoResponseEntity.getBody();
        assertThat(resource.getOuvrageId()).isEqualTo(1);
        assertThat(resource.getAuthor()).isEqualTo("Geneva Wetherby");
        assertThat(resource.getName()).isEqualTo("Acid House, The");
        assertThat(resource.getEditor()).isEqualTo("unicef.org");
        assertThat(resource.getNumberOfPages()).isEqualTo(982);
        assertThat(resource.getNotation()).isEqualTo(4);


    }

}
