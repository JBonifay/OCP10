package com.openclassrooms.bibliotheque.ouvrage;

import static org.assertj.core.api.Assertions.assertThat;

import com.openclassrooms.bibliotheque.ouvrage.dto.OuvrageRechercheWrapper;
import com.openclassrooms.bibliotheque.ouvrage.model.Ouvrage;
import com.openclassrooms.bibliotheque.ouvrage.model.Stock;
import com.openclassrooms.bibliotheque.ouvrage.service.OuvrageService;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Objects;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Slf4j
@ExtendWith(SpringExtension.class)
@SpringBootTest
public class OuvrageServiceTest {

    public static final int PAGE_SIZE = 10;
    public static final String PAGE_OBJECT_CONTAINS_D_ELEMENTS = "Page object contains : %d elements";
    @Autowired
    private             OuvrageService ouvrageService;
    public static final Ouvrage        OUVRAGE = new Ouvrage();

    @BeforeAll
    static void init() throws ParseException {
        OUVRAGE.setOuvrageId(1);
        OUVRAGE.setName("Acid House, The");
        OUVRAGE.setAuthor("Geneva Wetherby");

        // Format date into output format
        OUVRAGE.setReleaseDate(new Date(new SimpleDateFormat("yyyy-MM-dd").parse("2019-10-28").getTime()));
        OUVRAGE.setSummary(
                "In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.");
        OUVRAGE.setEditor("unicef.org");
        OUVRAGE.setNumberOfPages(982);
        OUVRAGE.setNotation(4);
        OUVRAGE.setStock(new Stock(1, 1, 2));
    }

    @Test
    public void findByOuvrageIdAndAssertIsEqualTest() {
        assertThat(ouvrageService.findOuvrageById(1)).isEqualTo(OUVRAGE);
    }

    @Test
    public void pageFilteredNoFilterReturnOuvrages() {
        Page<Ouvrage> page = ouvrageService.getFilteredResult(new OuvrageRechercheWrapper(0, PAGE_SIZE, "", "", "", 0, 0, 0));
        assertThat(page.getContent()).isNotEmpty();
        log.info(String.format(PAGE_OBJECT_CONTAINS_D_ELEMENTS, page.getContent().size()));
    }

    @ParameterizedTest
    @ValueSource(ints = {100, 200, 300, 400})
    public void pageFilteredFilterPageNumberReturnOuvrages(int numberOfPages) {
        Page<Ouvrage> page = ouvrageService.getFilteredResult(new OuvrageRechercheWrapper(0, PAGE_SIZE, "", "", "", numberOfPages, 0, 0));

        assertThat(page.getContent()).isNotEmpty();
        log.info(String.format(PAGE_OBJECT_CONTAINS_D_ELEMENTS, page.getContent().size()));

        page.getContent().forEach(ouvrage -> assertThat(ouvrage.getNumberOfPages() > numberOfPages));
    }

    @ParameterizedTest
    @ValueSource(ints = {1, 2, 3, 4, 5})
    public void pageFilteredFilterNotationReturnOuvrages(int notation) {
        Page<Ouvrage> page = ouvrageService.getFilteredResult(new OuvrageRechercheWrapper(0, PAGE_SIZE, "", "", "", 0, notation, 0));

        assertThat(page.getContent()).isNotEmpty();
        log.info(String.format(PAGE_OBJECT_CONTAINS_D_ELEMENTS, page.getContent().size()));

        page.getContent().forEach(ouvrage -> assertThat(ouvrage.getNotation() == notation));
    }

    @ParameterizedTest
    @ValueSource(ints = {1, 2, 3, 4, 5})
    public void pageFilteredFilterQuantityReturnOuvrages(int quantity) {
        Page<Ouvrage> page = ouvrageService.getFilteredResult(new OuvrageRechercheWrapper(0, PAGE_SIZE, "", "", "", 0, 0, quantity));

        assertThat(page.getContent()).isNotEmpty();
        log.info(String.format(PAGE_OBJECT_CONTAINS_D_ELEMENTS, page.getContent().size()));

        page.getContent().forEach(ouvrage -> assertThat(ouvrage.getStock().getQuantity() == quantity));
    }

    @ParameterizedTest
    @ValueSource(strings = {"ucla.edu", "delicious.com", "vinaora.com", "com.com", "slashdot.org"})
    public void pageFilteredFilterEditorReturnOuvrages(String editor) {
        Page<Ouvrage> page = ouvrageService.getFilteredResult(new OuvrageRechercheWrapper(0, PAGE_SIZE, "", "", editor, 0, 0, 0));

        assertThat(page.getContent()).isNotEmpty();
        log.info(String.format(PAGE_OBJECT_CONTAINS_D_ELEMENTS, page.getContent().size()));

        page.getContent().forEach(ouvrage -> assertThat(Objects.equals(ouvrage.getEditor(), editor)));
    }

    @ParameterizedTest
    @ValueSource(strings = {"Acid House, The", "Life of Oharu, The (Saikaku ichidai onna)", "Batman Begins", "Muppets From Space", "Confidential Agent"})
    public void pageFilteredFilterNameReturnOuvrages(String name) {
        Page<Ouvrage> page = ouvrageService.getFilteredResult(new OuvrageRechercheWrapper(0, PAGE_SIZE, name, "", "", 0, 0, 0));

        assertThat(page.getContent()).isNotEmpty();
        log.info(String.format(PAGE_OBJECT_CONTAINS_D_ELEMENTS, page.getContent().size()));

        page.getContent().forEach(ouvrage -> assertThat(Objects.equals(ouvrage.getName(), name)));
    }

    @ParameterizedTest
    @ValueSource(strings = {"Geneva Wetherby", "Algernon Solano", "Maxie Dominichelli", "Oona Dossantos", "Clarice Readshaw"})
    public void pageFilteredFilterAuthorReturnOuvrages(String author) {
        Page<Ouvrage> page = ouvrageService.getFilteredResult(new OuvrageRechercheWrapper(0, PAGE_SIZE, "", author, "", 0, 0, 0));

        assertThat(page.getContent()).isNotEmpty();
        log.info(String.format(PAGE_OBJECT_CONTAINS_D_ELEMENTS, page.getContent().size()));

        page.getContent().forEach(ouvrage -> assertThat(Objects.equals(ouvrage.getAuthor(), author)));
    }

}
