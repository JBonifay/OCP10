package com.openclassrooms.bibliotheque.zuulserver;

import static org.assertj.core.api.Assertions.assertThat;

import com.openclassrooms.bibliotheque.zuulserver.filter.PostFilter;
import com.openclassrooms.bibliotheque.zuulserver.filter.PreFilter;
import org.junit.jupiter.api.Test;

public class FilterTest {

    @Test
    public void testPreFilter() {
        PreFilter preFilter = new PreFilter();
        assertThat(preFilter.filterType()).isEqualTo("pre");
        assertThat(preFilter.filterOrder()).isEqualTo(1);
        assertThat(preFilter.shouldFilter()).isEqualTo(true);
    }

    @Test
    public void testPostFilter() {
        PostFilter postFilter = new PostFilter();
        assertThat(postFilter.filterType()).isEqualTo("post");
        assertThat(postFilter.filterOrder()).isEqualTo(1);
        assertThat(postFilter.shouldFilter()).isEqualTo(true);
    }

}
