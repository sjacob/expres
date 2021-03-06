// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ExhibitionsItemJsonController;
import au.gov.nla.expres.model.Exhibition;
import au.gov.nla.expres.service.api.ExhibitionService;
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

privileged aspect ExhibitionsItemJsonController_Roo_JSON {
    
    declare @type: ExhibitionsItemJsonController: @RestController;
    
    declare @type: ExhibitionsItemJsonController: @RequestMapping(value = "/api/exhibitions/{exhibition}", name = "ExhibitionsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param exhibitionService
     */
    @Autowired
    public ExhibitionsItemJsonController.new(ExhibitionService exhibitionService) {
        this.exhibitionService = exhibitionService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Exhibition
     */
    @ModelAttribute
    public Exhibition ExhibitionsItemJsonController.getExhibition(@PathVariable("exhibition") Long id) {
        Exhibition exhibition = exhibitionService.findOne(id);
        if (exhibition == null) {
            throw new NotFoundException(String.format("Exhibition with identifier '%s' not found",id));
        }
        return exhibition;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ExhibitionsItemJsonController.show(@ModelAttribute Exhibition exhibition) {
        return ResponseEntity.ok(exhibition);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @return UriComponents
     */
    public static UriComponents ExhibitionsItemJsonController.showURI(Exhibition exhibition) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ExhibitionsItemJsonController.class).show(exhibition))
            .buildAndExpand(exhibition.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedExhibition
     * @param exhibition
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ExhibitionsItemJsonController.update(@ModelAttribute Exhibition storedExhibition, @Valid @RequestBody Exhibition exhibition, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        exhibition.setId(storedExhibition.getId());
        getExhibitionService().save(exhibition);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ExhibitionsItemJsonController.delete(@ModelAttribute Exhibition exhibition) {
        getExhibitionService().delete(exhibition);
        return ResponseEntity.ok().build();
    }
    
}
