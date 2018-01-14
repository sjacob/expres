package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.ResearchDocument;
import au.gov.nla.expres.service.api.ResearchDocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ResearchDocumentDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ResearchDocument.class)
public class ResearchDocumentDeserializer extends JsonObjectDeserializer<ResearchDocument> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ResearchDocumentService researchDocumentService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param researchDocumentService
     * @param conversionService
     */
    @Autowired
    public ResearchDocumentDeserializer(@Lazy ResearchDocumentService researchDocumentService, ConversionService conversionService) {
        this.researchDocumentService = researchDocumentService;
        this.conversionService = conversionService;
    }
}
