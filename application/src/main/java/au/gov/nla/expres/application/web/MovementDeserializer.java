package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Movement;
import au.gov.nla.expres.service.api.MovementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = MovementDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Movement.class)
public class MovementDeserializer extends JsonObjectDeserializer<Movement> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private MovementService movementService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param movementService
     * @param conversionService
     */
    @Autowired
    public MovementDeserializer(@Lazy MovementService movementService, ConversionService conversionService) {
        this.movementService = movementService;
        this.conversionService = conversionService;
    }
}
