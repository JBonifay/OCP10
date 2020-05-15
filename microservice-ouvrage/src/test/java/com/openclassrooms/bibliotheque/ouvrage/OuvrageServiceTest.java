package com.openclassrooms.bibliotheque.ouvrage;

import com.openclassrooms.bibliotheque.ouvrage.service.OuvrageService;
import java.sql.SQLException;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Slf4j
@ExtendWith(SpringExtension.class)
@SpringBootTest
public class OuvrageServiceTest {

    @Autowired
    private OuvrageService ouvrageService;

    @Test
    public void test() throws SQLException {

    }


}
