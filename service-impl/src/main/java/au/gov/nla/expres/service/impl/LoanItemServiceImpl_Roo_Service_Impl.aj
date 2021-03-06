// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.service.impl;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Loan;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.repository.LoanItemRepository;
import au.gov.nla.expres.service.impl.LoanItemServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LoanItemServiceImpl_Roo_Service_Impl {
    
    declare @type: LoanItemServiceImpl: @Service;
    
    declare @type: LoanItemServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LoanItemRepository LoanItemServiceImpl.loanItemRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param loanItemRepository
     */
    @Autowired
    public LoanItemServiceImpl.new(LoanItemRepository loanItemRepository) {
        setLoanItemRepository(loanItemRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return LoanItemRepository
     */
    public LoanItemRepository LoanItemServiceImpl.getLoanItemRepository() {
        return loanItemRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanItemRepository
     */
    public void LoanItemServiceImpl.setLoanItemRepository(LoanItemRepository loanItemRepository) {
        this.loanItemRepository = loanItemRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanItem
     */
    @Transactional
    public void LoanItemServiceImpl.delete(LoanItem loanItem) {
        // Clear bidirectional many-to-one child relationship with Loan
        if (loanItem.getLoan() != null) {
            loanItem.getLoan().getLoanItems().remove(loanItem);
        }
        
        // Clear bidirectional many-to-one child relationship with CollectionItem
        if (loanItem.getLItem() != null) {
            loanItem.getLItem().getLoans().remove(loanItem);
        }
        
        getLoanItemRepository().delete(loanItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<LoanItem> LoanItemServiceImpl.save(Iterable<LoanItem> entities) {
        return getLoanItemRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void LoanItemServiceImpl.delete(Iterable<Long> ids) {
        List<LoanItem> toDelete = getLoanItemRepository().findAll(ids);
        getLoanItemRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return LoanItem
     */
    @Transactional
    public LoanItem LoanItemServiceImpl.save(LoanItem entity) {
        return getLoanItemRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LoanItem
     */
    public LoanItem LoanItemServiceImpl.findOne(Long id) {
        return getLoanItemRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LoanItem
     */
    public LoanItem LoanItemServiceImpl.findOneForUpdate(Long id) {
        return getLoanItemRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<LoanItem> LoanItemServiceImpl.findAll(Iterable<Long> ids) {
        return getLoanItemRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<LoanItem> LoanItemServiceImpl.findAll() {
        return getLoanItemRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long LoanItemServiceImpl.count() {
        return getLoanItemRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getLoanItemRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getLoanItemRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemServiceImpl.findByLItem(CollectionItem lItem, GlobalSearch globalSearch, Pageable pageable) {
        return getLoanItemRepository().findByLItem(lItem, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemServiceImpl.findByLoan(Loan loan, GlobalSearch globalSearch, Pageable pageable) {
        return getLoanItemRepository().findByLoan(loan, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lItem
     * @return Long
     */
    public long LoanItemServiceImpl.countByLItem(CollectionItem lItem) {
        return getLoanItemRepository().countByLItem(lItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @return Long
     */
    public long LoanItemServiceImpl.countByLoan(Loan loan) {
        return getLoanItemRepository().countByLoan(loan);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<LoanItem> LoanItemServiceImpl.getEntityType() {
        return LoanItem.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> LoanItemServiceImpl.getIdType() {
        return Long.class;
    }
    
}
