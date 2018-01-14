// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.LoanItemDeserializer;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.service.api.LoanItemService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect LoanItemDeserializer_Roo_EntityDeserializer {
    
    declare @type: LoanItemDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LoanItemService
     */
    public LoanItemService LoanItemDeserializer.getLoanItemService() {
        return loanItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanItemService
     */
    public void LoanItemDeserializer.setLoanItemService(LoanItemService loanItemService) {
        this.loanItemService = loanItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService LoanItemDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void LoanItemDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return LoanItem
     * @throws IOException
     */
    public LoanItem LoanItemDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        LoanItem loanItem = loanItemService.findOne(id);
        if (loanItem == null) {
            throw new NotFoundException("LoanItem not found");
        }
        return loanItem;
    }
    
}