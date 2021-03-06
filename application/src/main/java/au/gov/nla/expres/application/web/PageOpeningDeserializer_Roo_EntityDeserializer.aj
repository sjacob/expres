// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.PageOpeningDeserializer;
import au.gov.nla.expres.model.PageOpening;
import au.gov.nla.expres.service.api.PageOpeningService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect PageOpeningDeserializer_Roo_EntityDeserializer {
    
    declare @type: PageOpeningDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PageOpeningService
     */
    public PageOpeningService PageOpeningDeserializer.getPageOpeningService() {
        return pageOpeningService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pageOpeningService
     */
    public void PageOpeningDeserializer.setPageOpeningService(PageOpeningService pageOpeningService) {
        this.pageOpeningService = pageOpeningService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService PageOpeningDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void PageOpeningDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return PageOpening
     * @throws IOException
     */
    public PageOpening PageOpeningDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        PageOpening pageOpening = pageOpeningService.findOne(id);
        if (pageOpening == null) {
            throw new NotFoundException("PageOpening not found");
        }
        return pageOpening;
    }
    
}
