// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.PageOpeningsCollectionJsonController;
import au.gov.nla.expres.application.web.PageOpeningsItemJsonController;
import au.gov.nla.expres.model.PageOpening;
import au.gov.nla.expres.service.api.PageOpeningService;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect PageOpeningsCollectionJsonController_Roo_JSON {
    
    declare @type: PageOpeningsCollectionJsonController: @RestController;
    
    declare @type: PageOpeningsCollectionJsonController: @RequestMapping(value = "/api/pageopenings", name = "PageOpeningsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param pageOpeningService
     */
    @Autowired
    public PageOpeningsCollectionJsonController.new(PageOpeningService pageOpeningService) {
        this.pageOpeningService = pageOpeningService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<PageOpening>> PageOpeningsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<PageOpening> pageOpenings = getPageOpeningService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(pageOpenings);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents PageOpeningsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(PageOpeningsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pageOpening
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> PageOpeningsCollectionJsonController.create(@Valid @RequestBody PageOpening pageOpening, BindingResult result) {
        
        if (pageOpening.getId() != null || pageOpening.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        PageOpening newPageOpening = getPageOpeningService().save(pageOpening);
        UriComponents showURI = PageOpeningsItemJsonController.showURI(newPageOpening);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pageOpenings
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> PageOpeningsCollectionJsonController.createBatch(@Valid @RequestBody Collection<PageOpening> pageOpenings, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getPageOpeningService().save(pageOpenings);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pageOpenings
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> PageOpeningsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<PageOpening> pageOpenings, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getPageOpeningService().save(pageOpenings);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> PageOpeningsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getPageOpeningService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}