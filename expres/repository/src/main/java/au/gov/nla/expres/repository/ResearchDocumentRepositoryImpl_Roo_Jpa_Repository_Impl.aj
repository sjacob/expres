// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Exhibition;
import au.gov.nla.expres.model.QResearchDocument;
import au.gov.nla.expres.model.ResearchDocument;
import au.gov.nla.expres.repository.ResearchDocumentRepositoryCustom;
import au.gov.nla.expres.repository.ResearchDocumentRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect ResearchDocumentRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: ResearchDocumentRepositoryImpl implements ResearchDocumentRepositoryCustom;
    
    declare @type: ResearchDocumentRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.EXHIBITION = "exhibition";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.RD_ITEM = "rdItem";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.TITLE = "title";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.AUTHOR = "author";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.YEAR_PUBLISHED = "yearPublished";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.FORMAT = "format";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.REFERENCE_URL = "referenceUrl";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ResearchDocumentRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ResearchDocument> ResearchDocumentRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QResearchDocument researchDocument = QResearchDocument.researchDocument;
        
        JPQLQuery<ResearchDocument> query = from(researchDocument);
        
        Path<?>[] paths = new Path<?>[] {researchDocument.exhibition,researchDocument.rdItem,researchDocument.title,researchDocument.author,researchDocument.yearPublished,researchDocument.format,researchDocument.referenceUrl,researchDocument.createdDate,researchDocument.createdBy,researchDocument.modifiedDate,researchDocument.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, researchDocument.exhibition)
			.map(RD_ITEM, researchDocument.rdItem)
			.map(TITLE, researchDocument.title)
			.map(AUTHOR, researchDocument.author)
			.map(YEAR_PUBLISHED, researchDocument.yearPublished)
			.map(FORMAT, researchDocument.format)
			.map(REFERENCE_URL, researchDocument.referenceUrl)
			.map(CREATED_DATE, researchDocument.createdDate)
			.map(CREATED_BY, researchDocument.createdBy)
			.map(MODIFIED_DATE, researchDocument.modifiedDate)
			.map(MODIFIED_BY, researchDocument.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, researchDocument);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ResearchDocument> ResearchDocumentRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QResearchDocument researchDocument = QResearchDocument.researchDocument;
        
        JPQLQuery<ResearchDocument> query = from(researchDocument);
        
        Path<?>[] paths = new Path<?>[] {researchDocument.exhibition,researchDocument.rdItem,researchDocument.title,researchDocument.author,researchDocument.yearPublished,researchDocument.format,researchDocument.referenceUrl,researchDocument.createdDate,researchDocument.createdBy,researchDocument.modifiedDate,researchDocument.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(researchDocument.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, researchDocument.exhibition)
			.map(RD_ITEM, researchDocument.rdItem)
			.map(TITLE, researchDocument.title)
			.map(AUTHOR, researchDocument.author)
			.map(YEAR_PUBLISHED, researchDocument.yearPublished)
			.map(FORMAT, researchDocument.format)
			.map(REFERENCE_URL, researchDocument.referenceUrl)
			.map(CREATED_DATE, researchDocument.createdDate)
			.map(CREATED_BY, researchDocument.createdBy)
			.map(MODIFIED_DATE, researchDocument.modifiedDate)
			.map(MODIFIED_BY, researchDocument.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, researchDocument);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ResearchDocument> ResearchDocumentRepositoryImpl.findByExhibition(Exhibition exhibition, GlobalSearch globalSearch, Pageable pageable) {
        
        QResearchDocument researchDocument = QResearchDocument.researchDocument;
        
        JPQLQuery<ResearchDocument> query = from(researchDocument);
        
        Assert.notNull(exhibition, "exhibition is required");
        
        query.where(researchDocument.exhibition.eq(exhibition));
        Path<?>[] paths = new Path<?>[] {researchDocument.exhibition,researchDocument.rdItem,researchDocument.title,researchDocument.author,researchDocument.yearPublished,researchDocument.format,researchDocument.referenceUrl,researchDocument.createdDate,researchDocument.createdBy,researchDocument.modifiedDate,researchDocument.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, researchDocument.exhibition)
			.map(RD_ITEM, researchDocument.rdItem)
			.map(TITLE, researchDocument.title)
			.map(AUTHOR, researchDocument.author)
			.map(YEAR_PUBLISHED, researchDocument.yearPublished)
			.map(FORMAT, researchDocument.format)
			.map(REFERENCE_URL, researchDocument.referenceUrl)
			.map(CREATED_DATE, researchDocument.createdDate)
			.map(CREATED_BY, researchDocument.createdBy)
			.map(MODIFIED_DATE, researchDocument.modifiedDate)
			.map(MODIFIED_BY, researchDocument.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, researchDocument);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rdItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ResearchDocument> ResearchDocumentRepositoryImpl.findByRdItem(CollectionItem rdItem, GlobalSearch globalSearch, Pageable pageable) {
        
        QResearchDocument researchDocument = QResearchDocument.researchDocument;
        
        JPQLQuery<ResearchDocument> query = from(researchDocument);
        
        Assert.notNull(rdItem, "rdItem is required");
        
        query.where(researchDocument.rdItem.eq(rdItem));
        Path<?>[] paths = new Path<?>[] {researchDocument.exhibition,researchDocument.rdItem,researchDocument.title,researchDocument.author,researchDocument.yearPublished,researchDocument.format,researchDocument.referenceUrl,researchDocument.createdDate,researchDocument.createdBy,researchDocument.modifiedDate,researchDocument.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, researchDocument.exhibition)
			.map(RD_ITEM, researchDocument.rdItem)
			.map(TITLE, researchDocument.title)
			.map(AUTHOR, researchDocument.author)
			.map(YEAR_PUBLISHED, researchDocument.yearPublished)
			.map(FORMAT, researchDocument.format)
			.map(REFERENCE_URL, researchDocument.referenceUrl)
			.map(CREATED_DATE, researchDocument.createdDate)
			.map(CREATED_BY, researchDocument.createdBy)
			.map(MODIFIED_DATE, researchDocument.modifiedDate)
			.map(MODIFIED_BY, researchDocument.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, researchDocument);
    }
    
}