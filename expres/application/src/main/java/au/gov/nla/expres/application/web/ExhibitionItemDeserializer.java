package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.service.api.ExhibitionItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ExhibitionItemDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ExhibitionItem.class)
public class ExhibitionItemDeserializer extends JsonObjectDeserializer<ExhibitionItem> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ExhibitionItemService exhibitionItemService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param exhibitionItemService
     * @param conversionService
     */
    @Autowired
    public ExhibitionItemDeserializer(@Lazy ExhibitionItemService exhibitionItemService, ConversionService conversionService) {
        this.exhibitionItemService = exhibitionItemService;
        this.conversionService = conversionService;
    }
}
