// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ExhibitionItemsItemJsonController;
import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.service.api.ExhibitionItemService;
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

privileged aspect ExhibitionItemsItemJsonController_Roo_JSON {
    
    declare @type: ExhibitionItemsItemJsonController: @RestController;
    
    declare @type: ExhibitionItemsItemJsonController: @RequestMapping(value = "/api/exhibitionitems/{exhibitionItem}", name = "ExhibitionItemsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param exhibitionItemService
     */
    @Autowired
    public ExhibitionItemsItemJsonController.new(ExhibitionItemService exhibitionItemService) {
        this.exhibitionItemService = exhibitionItemService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ExhibitionItem
     */
    @ModelAttribute
    public ExhibitionItem ExhibitionItemsItemJsonController.getExhibitionItem(@PathVariable("exhibitionItem") Long id) {
        ExhibitionItem exhibitionItem = exhibitionItemService.findOne(id);
        if (exhibitionItem == null) {
            throw new NotFoundException(String.format("ExhibitionItem with identifier '%s' not found",id));
        }
        return exhibitionItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionItem
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ExhibitionItemsItemJsonController.show(@ModelAttribute ExhibitionItem exhibitionItem) {
        return ResponseEntity.ok(exhibitionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionItem
     * @return UriComponents
     */
    public static UriComponents ExhibitionItemsItemJsonController.showURI(ExhibitionItem exhibitionItem) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ExhibitionItemsItemJsonController.class).show(exhibitionItem))
            .buildAndExpand(exhibitionItem.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedExhibitionItem
     * @param exhibitionItem
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ExhibitionItemsItemJsonController.update(@ModelAttribute ExhibitionItem storedExhibitionItem, @Valid @RequestBody ExhibitionItem exhibitionItem, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        exhibitionItem.setId(storedExhibitionItem.getId());
        getExhibitionItemService().save(exhibitionItem);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionItem
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ExhibitionItemsItemJsonController.delete(@ModelAttribute ExhibitionItem exhibitionItem) {
        getExhibitionItemService().delete(exhibitionItem);
        return ResponseEntity.ok().build();
    }
    
}
