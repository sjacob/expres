// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.model.PageOpening;
import au.gov.nla.expres.model.QPageOpening;
import au.gov.nla.expres.repository.PageOpeningRepositoryCustom;
import au.gov.nla.expres.repository.PageOpeningRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect PageOpeningRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: PageOpeningRepositoryImpl implements PageOpeningRepositoryCustom;
    
    declare @type: PageOpeningRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.EXHIBITION_ITEM = "exhibitionItem";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.TITLE = "title";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.PAGE_NUMBER = "pageNumber";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.DISPLAY_START = "displayStart";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.DISPLAY_END = "displayEnd";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PageOpeningRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PageOpening> PageOpeningRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QPageOpening pageOpening = QPageOpening.pageOpening;
        
        JPQLQuery<PageOpening> query = from(pageOpening);
        
        Path<?>[] paths = new Path<?>[] {pageOpening.exhibitionItem,pageOpening.title,pageOpening.pageNumber,pageOpening.displayStart,pageOpening.displayEnd,pageOpening.createdDate,pageOpening.createdBy,pageOpening.modifiedDate,pageOpening.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION_ITEM, pageOpening.exhibitionItem)
			.map(TITLE, pageOpening.title)
			.map(PAGE_NUMBER, pageOpening.pageNumber)
			.map(DISPLAY_START, pageOpening.displayStart)
			.map(DISPLAY_END, pageOpening.displayEnd)
			.map(CREATED_DATE, pageOpening.createdDate)
			.map(CREATED_BY, pageOpening.createdBy)
			.map(MODIFIED_DATE, pageOpening.modifiedDate)
			.map(MODIFIED_BY, pageOpening.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pageOpening);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PageOpening> PageOpeningRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QPageOpening pageOpening = QPageOpening.pageOpening;
        
        JPQLQuery<PageOpening> query = from(pageOpening);
        
        Path<?>[] paths = new Path<?>[] {pageOpening.exhibitionItem,pageOpening.title,pageOpening.pageNumber,pageOpening.displayStart,pageOpening.displayEnd,pageOpening.createdDate,pageOpening.createdBy,pageOpening.modifiedDate,pageOpening.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(pageOpening.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION_ITEM, pageOpening.exhibitionItem)
			.map(TITLE, pageOpening.title)
			.map(PAGE_NUMBER, pageOpening.pageNumber)
			.map(DISPLAY_START, pageOpening.displayStart)
			.map(DISPLAY_END, pageOpening.displayEnd)
			.map(CREATED_DATE, pageOpening.createdDate)
			.map(CREATED_BY, pageOpening.createdBy)
			.map(MODIFIED_DATE, pageOpening.modifiedDate)
			.map(MODIFIED_BY, pageOpening.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pageOpening);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PageOpening> PageOpeningRepositoryImpl.findByExhibitionItem(ExhibitionItem exhibitionItem, GlobalSearch globalSearch, Pageable pageable) {
        
        QPageOpening pageOpening = QPageOpening.pageOpening;
        
        JPQLQuery<PageOpening> query = from(pageOpening);
        
        Assert.notNull(exhibitionItem, "exhibitionItem is required");
        
        query.where(pageOpening.exhibitionItem.eq(exhibitionItem));
        Path<?>[] paths = new Path<?>[] {pageOpening.exhibitionItem,pageOpening.title,pageOpening.pageNumber,pageOpening.displayStart,pageOpening.displayEnd,pageOpening.createdDate,pageOpening.createdBy,pageOpening.modifiedDate,pageOpening.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION_ITEM, pageOpening.exhibitionItem)
			.map(TITLE, pageOpening.title)
			.map(PAGE_NUMBER, pageOpening.pageNumber)
			.map(DISPLAY_START, pageOpening.displayStart)
			.map(DISPLAY_END, pageOpening.displayEnd)
			.map(CREATED_DATE, pageOpening.createdDate)
			.map(CREATED_BY, pageOpening.createdBy)
			.map(MODIFIED_DATE, pageOpening.modifiedDate)
			.map(MODIFIED_BY, pageOpening.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pageOpening);
    }
    
}