package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.PageOpening;
import au.gov.nla.expres.service.api.PageOpeningService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = PageOpeningDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = PageOpening.class)
public class PageOpeningDeserializer extends JsonObjectDeserializer<PageOpening> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private PageOpeningService pageOpeningService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param pageOpeningService
     * @param conversionService
     */
    @Autowired
    public PageOpeningDeserializer(@Lazy PageOpeningService pageOpeningService, ConversionService conversionService) {
        this.pageOpeningService = pageOpeningService;
        this.conversionService = conversionService;
    }
}
