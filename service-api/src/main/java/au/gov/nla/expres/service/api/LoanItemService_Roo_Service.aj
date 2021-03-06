// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.service.api;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Loan;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.service.api.LoanItemService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect LoanItemService_Roo_Service {
    
    declare parents: LoanItemService extends EntityResolver<LoanItem, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LoanItem
     */
    public abstract LoanItem LoanItemService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanItem
     */
    public abstract void LoanItemService.delete(LoanItem loanItem);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<LoanItem> LoanItemService.save(Iterable<LoanItem> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void LoanItemService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return LoanItem
     */
    public abstract LoanItem LoanItemService.save(LoanItem entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LoanItem
     */
    public abstract LoanItem LoanItemService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<LoanItem> LoanItemService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<LoanItem> LoanItemService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long LoanItemService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LoanItem> LoanItemService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LoanItem> LoanItemService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LoanItem> LoanItemService.findByLItem(CollectionItem lItem, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LoanItem> LoanItemService.findByLoan(Loan loan, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lItem
     * @return Long
     */
    public abstract long LoanItemService.countByLItem(CollectionItem lItem);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @return Long
     */
    public abstract long LoanItemService.countByLoan(Loan loan);
    
}
