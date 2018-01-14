// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.TreatmentsCollectionJsonController;
import au.gov.nla.expres.application.web.TreatmentsItemJsonController;
import au.gov.nla.expres.model.Treatment;
import au.gov.nla.expres.service.api.TreatmentService;
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

privileged aspect TreatmentsCollectionJsonController_Roo_JSON {
    
    declare @type: TreatmentsCollectionJsonController: @RestController;
    
    declare @type: TreatmentsCollectionJsonController: @RequestMapping(value = "/api/treatments", name = "TreatmentsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param treatmentService
     */
    @Autowired
    public TreatmentsCollectionJsonController.new(TreatmentService treatmentService) {
        this.treatmentService = treatmentService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Treatment>> TreatmentsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Treatment> treatments = getTreatmentService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(treatments);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents TreatmentsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(TreatmentsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatment
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> TreatmentsCollectionJsonController.create(@Valid @RequestBody Treatment treatment, BindingResult result) {
        
        if (treatment.getId() != null || treatment.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Treatment newTreatment = getTreatmentService().save(treatment);
        UriComponents showURI = TreatmentsItemJsonController.showURI(newTreatment);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatments
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> TreatmentsCollectionJsonController.createBatch(@Valid @RequestBody Collection<Treatment> treatments, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTreatmentService().save(treatments);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatments
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> TreatmentsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Treatment> treatments, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTreatmentService().save(treatments);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> TreatmentsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getTreatmentService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
