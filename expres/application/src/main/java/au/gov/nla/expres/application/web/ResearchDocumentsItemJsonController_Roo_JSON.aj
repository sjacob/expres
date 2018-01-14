// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ResearchDocumentsItemJsonController;
import au.gov.nla.expres.model.ResearchDocument;
import au.gov.nla.expres.service.api.ResearchDocumentService;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ResearchDocumentsItemJsonController_Roo_JSON {
    
    declare @type: ResearchDocumentsItemJsonController: @RestController;
    
    declare @type: ResearchDocumentsItemJsonController: @RequestMapping(value = "/api/researchdocuments/{researchDocument}", name = "ResearchDocumentsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param researchDocumentService
     */
    @Autowired
    public ResearchDocumentsItemJsonController.new(ResearchDocumentService researchDocumentService) {
        this.researchDocumentService = researchDocumentService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ResearchDocument
     */
    @ModelAttribute
    public ResearchDocument ResearchDocumentsItemJsonController.getResearchDocument(@PathVariable("researchDocument") Long id) {
        ResearchDocument researchDocument = researchDocumentService.findOne(id);
        if (researchDocument == null) {
            throw new NotFoundException(String.format("ResearchDocument with identifier '%s' not found",id));
        }
        return researchDocument;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocument
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ResearchDocumentsItemJsonController.show(@ModelAttribute ResearchDocument researchDocument) {
        return ResponseEntity.ok(researchDocument);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocument
     * @return UriComponents
     */
    public static UriComponents ResearchDocumentsItemJsonController.showURI(ResearchDocument researchDocument) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ResearchDocumentsItemJsonController.class).show(researchDocument))
            .buildAndExpand(researchDocument.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedResearchDocument
     * @param researchDocument
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ResearchDocumentsItemJsonController.update(@ModelAttribute ResearchDocument storedResearchDocument, @Valid @RequestBody ResearchDocument researchDocument, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        researchDocument.setId(storedResearchDocument.getId());
        getResearchDocumentService().save(researchDocument);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocument
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ResearchDocumentsItemJsonController.delete(@ModelAttribute ResearchDocument researchDocument) {
        getResearchDocumentService().delete(researchDocument);
        return ResponseEntity.ok().build();
    }
    
}
