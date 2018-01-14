package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Request;
import au.gov.nla.expres.service.api.RequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = RequestDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Request.class)
public class RequestDeserializer extends JsonObjectDeserializer<Request> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private RequestService requestService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param requestService
     * @param conversionService
     */
    @Autowired
    public RequestDeserializer(@Lazy RequestService requestService, ConversionService conversionService) {
        this.requestService = requestService;
        this.conversionService = conversionService;
    }
}
