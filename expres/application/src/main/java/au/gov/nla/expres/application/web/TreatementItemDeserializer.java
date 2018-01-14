package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.service.api.TreatementItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TreatementItemDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = TreatementItem.class)
public class TreatementItemDeserializer extends JsonObjectDeserializer<TreatementItem> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TreatementItemService treatementItemService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param treatementItemService
     * @param conversionService
     */
    @Autowired
    public TreatementItemDeserializer(@Lazy TreatementItemService treatementItemService, ConversionService conversionService) {
        this.treatementItemService = treatementItemService;
        this.conversionService = conversionService;
    }
}
