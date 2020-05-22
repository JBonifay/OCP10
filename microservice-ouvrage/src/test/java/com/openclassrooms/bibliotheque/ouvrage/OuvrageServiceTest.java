package com.openclassrooms.bibliotheque.ouvrage;

import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import com.openclassrooms.bibliotheque.ouvrage.rest.exceptions.OuvrageNotFoundException;
import com.openclassrooms.bibliotheque.ouvrage.service.OuvrageService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
public class OuvrageServiceTest {

    private static OuvrageService ouvrageServiceMock;

    @BeforeAll
    static void init() {
        ouvrageServiceMock = mock(OuvrageService.class);
    }

    @Test
    public void getFilteredResult() {
        when(ouvrageServiceMock.findOuvrageById(anyInt())).thenThrow(new OuvrageNotFoundException());

        Assertions.assertThatExceptionOfType(OuvrageNotFoundException.class).isThrownBy(() -> {
            ouvrageServiceMock.findOuvrageById(1);
        }).withMessage("Ouvrage non trouvé ...");
    }


}
