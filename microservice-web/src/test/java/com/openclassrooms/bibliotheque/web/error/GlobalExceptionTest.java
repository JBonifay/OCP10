package com.openclassrooms.bibliotheque.web.error;

import static org.assertj.core.api.Assertions.assertThat;

import com.openclassrooms.bibliotheque.web.web.exceptions.GlobalException;
import org.junit.jupiter.api.Test;

public class GlobalExceptionTest {

    @Test
    public void testGlobalException() {

        GlobalException globalException = new GlobalException("Test globalException");

        assertThat(globalException.getMessage()).isEqualTo("Test globalException");

        globalException = new GlobalException();

        assertThat(globalException.getMessage()).isEqualTo("Error ...");
    }

}
