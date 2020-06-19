package com.openclassrooms.bibliotheque.web.proxies;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import java.util.List;
import lombok.Getter;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

@Getter
public class RestPageImpl<T> extends PageImpl<T> {

    private final int totalPages;

    @JsonCreator(mode = JsonCreator.Mode.PROPERTIES)
    public RestPageImpl(@JsonProperty("content") List<T> content, @JsonProperty("number") int number,
                        @JsonProperty("size") int size, @JsonProperty("totalElements") Long totalElements,
                        @JsonProperty("pageable") JsonNode pageable, @JsonProperty("last") boolean last,
                        @JsonProperty("totalPages") int totalPages, @JsonProperty("sort") JsonNode sort,
                        @JsonProperty("first") boolean first, @JsonProperty("numberOfElements") int numberOfElements) {
        super(content, PageRequest.of(number + 1, size), totalElements);
        this.totalPages = totalPages;
    }
    
}
