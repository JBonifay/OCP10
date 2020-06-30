package com.openclassrooms.bibliotheque.web.rest;

import com.openclassrooms.bibliotheque.web.proxies.RestPageImpl;
import java.util.ArrayList;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;

public class RestPageImplTest {


    @Test
    public void testRestPage() {
        final RestPageImpl restPage = new RestPageImpl(new ArrayList(), 0, 10, 20L, null, false, 10, null, false, 50);

        Assertions.assertThat(restPage.getTotalPages()).isEqualTo(10);

    }

}
