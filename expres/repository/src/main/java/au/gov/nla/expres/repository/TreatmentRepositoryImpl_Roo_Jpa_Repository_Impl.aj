// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.QTreatment;
import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.model.Treatment;
import au.gov.nla.expres.repository.TreatmentRepositoryCustom;
import au.gov.nla.expres.repository.TreatmentRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect TreatmentRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: TreatmentRepositoryImpl implements TreatmentRepositoryCustom;
    
    declare @type: TreatmentRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.T_ITEM = "tItem";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.CONSERVATOR = "conservator";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.TASK_TYPE = "taskType";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.TIME_SPENT = "timeSpent";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TreatmentRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Treatment> TreatmentRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QTreatment treatment = QTreatment.treatment;
        
        JPQLQuery<Treatment> query = from(treatment);
        
        Path<?>[] paths = new Path<?>[] {treatment.tItem,treatment.conservator,treatment.taskType,treatment.timeSpent,treatment.createdDate,treatment.createdBy,treatment.modifiedDate,treatment.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(T_ITEM, treatment.tItem)
			.map(CONSERVATOR, treatment.conservator)
			.map(TASK_TYPE, treatment.taskType)
			.map(TIME_SPENT, treatment.timeSpent)
			.map(CREATED_DATE, treatment.createdDate)
			.map(CREATED_BY, treatment.createdBy)
			.map(MODIFIED_DATE, treatment.modifiedDate)
			.map(MODIFIED_BY, treatment.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, treatment);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Treatment> TreatmentRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QTreatment treatment = QTreatment.treatment;
        
        JPQLQuery<Treatment> query = from(treatment);
        
        Path<?>[] paths = new Path<?>[] {treatment.tItem,treatment.conservator,treatment.taskType,treatment.timeSpent,treatment.createdDate,treatment.createdBy,treatment.modifiedDate,treatment.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(treatment.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(T_ITEM, treatment.tItem)
			.map(CONSERVATOR, treatment.conservator)
			.map(TASK_TYPE, treatment.taskType)
			.map(TIME_SPENT, treatment.timeSpent)
			.map(CREATED_DATE, treatment.createdDate)
			.map(CREATED_BY, treatment.createdBy)
			.map(MODIFIED_DATE, treatment.modifiedDate)
			.map(MODIFIED_BY, treatment.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, treatment);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Treatment> TreatmentRepositoryImpl.findByTItem(TreatementItem tItem, GlobalSearch globalSearch, Pageable pageable) {
        
        QTreatment treatment = QTreatment.treatment;
        
        JPQLQuery<Treatment> query = from(treatment);
        
        Assert.notNull(tItem, "tItem is required");
        
        query.where(treatment.tItem.eq(tItem));
        Path<?>[] paths = new Path<?>[] {treatment.tItem,treatment.conservator,treatment.taskType,treatment.timeSpent,treatment.createdDate,treatment.createdBy,treatment.modifiedDate,treatment.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(T_ITEM, treatment.tItem)
			.map(CONSERVATOR, treatment.conservator)
			.map(TASK_TYPE, treatment.taskType)
			.map(TIME_SPENT, treatment.timeSpent)
			.map(CREATED_DATE, treatment.createdDate)
			.map(CREATED_BY, treatment.createdBy)
			.map(MODIFIED_DATE, treatment.modifiedDate)
			.map(MODIFIED_BY, treatment.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, treatment);
    }
    
}