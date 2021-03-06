// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.RequestDeserializer;
import au.gov.nla.expres.model.Request;
import au.gov.nla.expres.service.api.RequestService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect RequestDeserializer_Roo_EntityDeserializer {
    
    declare @type: RequestDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RequestService
     */
    public RequestService RequestDeserializer.getRequestService() {
        return requestService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param requestService
     */
    public void RequestDeserializer.setRequestService(RequestService requestService) {
        this.requestService = requestService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService RequestDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void RequestDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Request
     * @throws IOException
     */
    public Request RequestDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Request request = requestService.findOne(id);
        if (request == null) {
            throw new NotFoundException("Request not found");
        }
        return request;
    }
    
}
