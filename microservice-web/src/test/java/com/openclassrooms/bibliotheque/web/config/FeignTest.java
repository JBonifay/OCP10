package com.openclassrooms.bibliotheque.web.config;

import com.openclassrooms.bibliotheque.web.config.WithMockCustomUser;
import com.openclassrooms.bibliotheque.web.proxies.ReservationProxy;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import static org.assertj.core.api.Assertions.assertThatExceptionOfType;

@Slf4j
@AutoConfigureMockMvc
@SpringBootTest
public class FeignTest {

    @Autowired
    private MockMvc mockMvc;
    @Autowired
    private ReservationProxy reservationProxy;

    @WithMockCustomUser
    @Test
    public void testFeign() {
        assertThatExceptionOfType(Exception.class).isThrownBy(() -> {
            reservationProxy.createNewListeAttente(1, 1);
        });
    }


}
