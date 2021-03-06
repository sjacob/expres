// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Loan;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.model.QLoanItem;
import au.gov.nla.expres.repository.LoanItemRepositoryCustom;
import au.gov.nla.expres.repository.LoanItemRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect LoanItemRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: LoanItemRepositoryImpl implements LoanItemRepositoryCustom;
    
    declare @type: LoanItemRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.LOAN = "loan";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.PLACEMENT = "placement";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.SUPPORT_TYPE = "supportType";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.SUPPORT_NOTES = "supportNotes";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.LIGHT_LEVELS = "lightLevels";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.DISPLAY_NOTES = "displayNotes";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.LOAN_CONDITIONS = "loanConditions";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.L_ITEM = "lItem";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LoanItemRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QLoanItem loanItem = QLoanItem.loanItem;
        
        JPQLQuery<LoanItem> query = from(loanItem);
        
        Path<?>[] paths = new Path<?>[] {loanItem.loan,loanItem.placement,loanItem.supportType,loanItem.supportNotes,loanItem.lightLevels,loanItem.displayNotes,loanItem.loanConditions,loanItem.lItem,loanItem.createdDate,loanItem.createdBy,loanItem.modifiedDate,loanItem.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(LOAN, loanItem.loan)
			.map(PLACEMENT, loanItem.placement)
			.map(SUPPORT_TYPE, loanItem.supportType)
			.map(SUPPORT_NOTES, loanItem.supportNotes)
			.map(LIGHT_LEVELS, loanItem.lightLevels)
			.map(DISPLAY_NOTES, loanItem.displayNotes)
			.map(LOAN_CONDITIONS, loanItem.loanConditions)
			.map(L_ITEM, loanItem.lItem)
			.map(CREATED_DATE, loanItem.createdDate)
			.map(CREATED_BY, loanItem.createdBy)
			.map(MODIFIED_DATE, loanItem.modifiedDate)
			.map(MODIFIED_BY, loanItem.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, loanItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QLoanItem loanItem = QLoanItem.loanItem;
        
        JPQLQuery<LoanItem> query = from(loanItem);
        
        Path<?>[] paths = new Path<?>[] {loanItem.loan,loanItem.placement,loanItem.supportType,loanItem.supportNotes,loanItem.lightLevels,loanItem.displayNotes,loanItem.loanConditions,loanItem.lItem,loanItem.createdDate,loanItem.createdBy,loanItem.modifiedDate,loanItem.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(loanItem.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(LOAN, loanItem.loan)
			.map(PLACEMENT, loanItem.placement)
			.map(SUPPORT_TYPE, loanItem.supportType)
			.map(SUPPORT_NOTES, loanItem.supportNotes)
			.map(LIGHT_LEVELS, loanItem.lightLevels)
			.map(DISPLAY_NOTES, loanItem.displayNotes)
			.map(LOAN_CONDITIONS, loanItem.loanConditions)
			.map(L_ITEM, loanItem.lItem)
			.map(CREATED_DATE, loanItem.createdDate)
			.map(CREATED_BY, loanItem.createdBy)
			.map(MODIFIED_DATE, loanItem.modifiedDate)
			.map(MODIFIED_BY, loanItem.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, loanItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemRepositoryImpl.findByLItem(CollectionItem lItem, GlobalSearch globalSearch, Pageable pageable) {
        
        QLoanItem loanItem = QLoanItem.loanItem;
        
        JPQLQuery<LoanItem> query = from(loanItem);
        
        Assert.notNull(lItem, "lItem is required");
        
        query.where(loanItem.lItem.eq(lItem));
        Path<?>[] paths = new Path<?>[] {loanItem.loan,loanItem.placement,loanItem.supportType,loanItem.supportNotes,loanItem.lightLevels,loanItem.displayNotes,loanItem.loanConditions,loanItem.lItem,loanItem.createdDate,loanItem.createdBy,loanItem.modifiedDate,loanItem.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(LOAN, loanItem.loan)
			.map(PLACEMENT, loanItem.placement)
			.map(SUPPORT_TYPE, loanItem.supportType)
			.map(SUPPORT_NOTES, loanItem.supportNotes)
			.map(LIGHT_LEVELS, loanItem.lightLevels)
			.map(DISPLAY_NOTES, loanItem.displayNotes)
			.map(LOAN_CONDITIONS, loanItem.loanConditions)
			.map(L_ITEM, loanItem.lItem)
			.map(CREATED_DATE, loanItem.createdDate)
			.map(CREATED_BY, loanItem.createdBy)
			.map(MODIFIED_DATE, loanItem.modifiedDate)
			.map(MODIFIED_BY, loanItem.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, loanItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LoanItem> LoanItemRepositoryImpl.findByLoan(Loan loan, GlobalSearch globalSearch, Pageable pageable) {
        
        QLoanItem loanItem = QLoanItem.loanItem;
        
        JPQLQuery<LoanItem> query = from(loanItem);
        
        Assert.notNull(loan, "loan is required");
        
        query.where(loanItem.loan.eq(loan));
        Path<?>[] paths = new Path<?>[] {loanItem.loan,loanItem.placement,loanItem.supportType,loanItem.supportNotes,loanItem.lightLevels,loanItem.displayNotes,loanItem.loanConditions,loanItem.lItem,loanItem.createdDate,loanItem.createdBy,loanItem.modifiedDate,loanItem.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(LOAN, loanItem.loan)
			.map(PLACEMENT, loanItem.placement)
			.map(SUPPORT_TYPE, loanItem.supportType)
			.map(SUPPORT_NOTES, loanItem.supportNotes)
			.map(LIGHT_LEVELS, loanItem.lightLevels)
			.map(DISPLAY_NOTES, loanItem.displayNotes)
			.map(LOAN_CONDITIONS, loanItem.loanConditions)
			.map(L_ITEM, loanItem.lItem)
			.map(CREATED_DATE, loanItem.createdDate)
			.map(CREATED_BY, loanItem.createdBy)
			.map(MODIFIED_DATE, loanItem.modifiedDate)
			.map(MODIFIED_BY, loanItem.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, loanItem);
    }
    
}
