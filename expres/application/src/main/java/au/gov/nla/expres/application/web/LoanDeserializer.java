package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Loan;
import au.gov.nla.expres.service.api.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = LoanDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Loan.class)
public class LoanDeserializer extends JsonObjectDeserializer<Loan> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private LoanService loanService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param loanService
     * @param conversionService
     */
    @Autowired
    public LoanDeserializer(@Lazy LoanService loanService, ConversionService conversionService) {
        this.loanService = loanService;
        this.conversionService = conversionService;
    }
}
