// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.VenuesItemJsonController;
import au.gov.nla.expres.model.Venue;
import au.gov.nla.expres.service.api.VenueService;
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

privileged aspect VenuesItemJsonController_Roo_JSON {
    
    declare @type: VenuesItemJsonController: @RestController;
    
    declare @type: VenuesItemJsonController: @RequestMapping(value = "/api/venues/{venue}", name = "VenuesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param venueService
     */
    @Autowired
    public VenuesItemJsonController.new(VenueService venueService) {
        this.venueService = venueService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Venue
     */
    @ModelAttribute
    public Venue VenuesItemJsonController.getVenue(@PathVariable("venue") Long id) {
        Venue venue = venueService.findOne(id);
        if (venue == null) {
            throw new NotFoundException(String.format("Venue with identifier '%s' not found",id));
        }
        return venue;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> VenuesItemJsonController.show(@ModelAttribute Venue venue) {
        return ResponseEntity.ok(venue);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @return UriComponents
     */
    public static UriComponents VenuesItemJsonController.showURI(Venue venue) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(VenuesItemJsonController.class).show(venue))
            .buildAndExpand(venue.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedVenue
     * @param venue
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> VenuesItemJsonController.update(@ModelAttribute Venue storedVenue, @Valid @RequestBody Venue venue, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        venue.setId(storedVenue.getId());
        getVenueService().save(venue);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> VenuesItemJsonController.delete(@ModelAttribute Venue venue) {
        getVenueService().delete(venue);
        return ResponseEntity.ok().build();
    }
    
}