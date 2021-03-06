// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.LoanDeserializer;
import au.gov.nla.expres.model.Loan;
import au.gov.nla.expres.service.api.LoanService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect LoanDeserializer_Roo_EntityDeserializer {
    
    declare @type: LoanDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LoanService
     */
    public LoanService LoanDeserializer.getLoanService() {
        return loanService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanService
     */
    public void LoanDeserializer.setLoanService(LoanService loanService) {
        this.loanService = loanService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService LoanDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void LoanDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Loan
     * @throws IOException
     */
    public Loan LoanDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Loan loan = loanService.findOne(id);
        if (loan == null) {
            throw new NotFoundException("Loan not found");
        }
        return loan;
    }
    
}
