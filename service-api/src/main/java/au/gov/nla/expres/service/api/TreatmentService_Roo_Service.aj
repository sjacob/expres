// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.service.api;

import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.model.Treatment;
import au.gov.nla.expres.service.api.TreatmentService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect TreatmentService_Roo_Service {
    
    declare parents: TreatmentService extends EntityResolver<Treatment, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Treatment
     */
    public abstract Treatment TreatmentService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatment
     */
    public abstract void TreatmentService.delete(Treatment treatment);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Treatment> TreatmentService.save(Iterable<Treatment> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void TreatmentService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Treatment
     */
    public abstract Treatment TreatmentService.save(Treatment entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Treatment
     */
    public abstract Treatment TreatmentService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Treatment> TreatmentService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Treatment> TreatmentService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long TreatmentService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Treatment> TreatmentService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Treatment> TreatmentService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Treatment> TreatmentService.findByTItem(TreatementItem tItem, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     * @return Long
     */
    public abstract long TreatmentService.countByTItem(TreatementItem tItem);
    
}
