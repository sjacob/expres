package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.DigitalObject;
import au.gov.nla.expres.service.api.DigitalObjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = DigitalObjectDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = DigitalObject.class)
public class DigitalObjectDeserializer extends JsonObjectDeserializer<DigitalObject> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private DigitalObjectService digitalObjectService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param digitalObjectService
     * @param conversionService
     */
    @Autowired
    public DigitalObjectDeserializer(@Lazy DigitalObjectService digitalObjectService, ConversionService conversionService) {
        this.digitalObjectService = digitalObjectService;
        this.conversionService = conversionService;
    }
}
