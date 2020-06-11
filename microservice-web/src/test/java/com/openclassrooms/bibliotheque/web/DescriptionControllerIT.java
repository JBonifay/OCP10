package com.openclassrooms.bibliotheque.web;

import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

@AutoConfigureMockMvc
// @AutoConfigureRestDocs
@SpringBootTest
public class DescriptionControllerIT {

    @MockBean
    private MockMvc mockMvc;




}
