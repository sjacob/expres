package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.service.api.LoanItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = LoanItemDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = LoanItem.class)
public class LoanItemDeserializer extends JsonObjectDeserializer<LoanItem> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private LoanItemService loanItemService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param loanItemService
     * @param conversionService
     */
    @Autowired
    public LoanItemDeserializer(@Lazy LoanItemService loanItemService, ConversionService conversionService) {
        this.loanItemService = loanItemService;
        this.conversionService = conversionService;
    }
}
