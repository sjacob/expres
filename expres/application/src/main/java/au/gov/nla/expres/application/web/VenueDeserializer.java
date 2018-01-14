package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Venue;
import au.gov.nla.expres.service.api.VenueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = VenueDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Venue.class)
public class VenueDeserializer extends JsonObjectDeserializer<Venue> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private VenueService venueService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param venueService
     * @param conversionService
     */
    @Autowired
    public VenueDeserializer(@Lazy VenueService venueService, ConversionService conversionService) {
        this.venueService = venueService;
        this.conversionService = conversionService;
    }
}
