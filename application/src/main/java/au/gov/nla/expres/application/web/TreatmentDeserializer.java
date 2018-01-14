package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Treatment;
import au.gov.nla.expres.service.api.TreatmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TreatmentDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Treatment.class)
public class TreatmentDeserializer extends JsonObjectDeserializer<Treatment> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TreatmentService treatmentService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param treatmentService
     * @param conversionService
     */
    @Autowired
    public TreatmentDeserializer(@Lazy TreatmentService treatmentService, ConversionService conversionService) {
        this.treatmentService = treatmentService;
        this.conversionService = conversionService;
    }
}
