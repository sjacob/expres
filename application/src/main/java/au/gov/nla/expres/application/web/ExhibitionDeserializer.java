package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Exhibition;
import au.gov.nla.expres.service.api.ExhibitionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ExhibitionDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Exhibition.class)
public class ExhibitionDeserializer extends JsonObjectDeserializer<Exhibition> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ExhibitionService exhibitionService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param exhibitionService
     * @param conversionService
     */
    @Autowired
    public ExhibitionDeserializer(@Lazy ExhibitionService exhibitionService, ConversionService conversionService) {
        this.exhibitionService = exhibitionService;
        this.conversionService = conversionService;
    }
}
