// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.VenuesCollectionJsonController;
import au.gov.nla.expres.application.web.VenuesItemJsonController;
import au.gov.nla.expres.model.Venue;
import au.gov.nla.expres.service.api.VenueService;
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

privileged aspect VenuesCollectionJsonController_Roo_JSON {
    
    declare @type: VenuesCollectionJsonController: @RestController;
    
    declare @type: VenuesCollectionJsonController: @RequestMapping(value = "/api/venues", name = "VenuesCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param venueService
     */
    @Autowired
    public VenuesCollectionJsonController.new(VenueService venueService) {
        this.venueService = venueService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Venue>> VenuesCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Venue> venues = getVenueService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(venues);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents VenuesCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(VenuesCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> VenuesCollectionJsonController.create(@Valid @RequestBody Venue venue, BindingResult result) {
        
        if (venue.getId() != null || venue.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Venue newVenue = getVenueService().save(venue);
        UriComponents showURI = VenuesItemJsonController.showURI(newVenue);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venues
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> VenuesCollectionJsonController.createBatch(@Valid @RequestBody Collection<Venue> venues, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getVenueService().save(venues);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venues
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> VenuesCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Venue> venues, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getVenueService().save(venues);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> VenuesCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getVenueService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
