// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.DigitalObjectDeserializer;
import au.gov.nla.expres.model.DigitalObject;
import au.gov.nla.expres.service.api.DigitalObjectService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect DigitalObjectDeserializer_Roo_EntityDeserializer {
    
    declare @type: DigitalObjectDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return DigitalObjectService
     */
    public DigitalObjectService DigitalObjectDeserializer.getDigitalObjectService() {
        return digitalObjectService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param digitalObjectService
     */
    public void DigitalObjectDeserializer.setDigitalObjectService(DigitalObjectService digitalObjectService) {
        this.digitalObjectService = digitalObjectService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService DigitalObjectDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void DigitalObjectDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return DigitalObject
     * @throws IOException
     */
    public DigitalObject DigitalObjectDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        DigitalObject digitalObject = digitalObjectService.findOne(id);
        if (digitalObject == null) {
            throw new NotFoundException("DigitalObject not found");
        }
        return digitalObject;
    }
    
}
