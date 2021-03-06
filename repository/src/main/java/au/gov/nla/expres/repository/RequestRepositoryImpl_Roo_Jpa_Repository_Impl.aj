// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.QRequest;
import au.gov.nla.expres.model.Request;
import au.gov.nla.expres.repository.RequestRepositoryCustom;
import au.gov.nla.expres.repository.RequestRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RequestRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: RequestRepositoryImpl implements RequestRepositoryCustom;
    
    declare @type: RequestRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.REQUESTOR = "requestor";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.REQUESTOR_PHONE = "requestorPhone";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.REQUESTOR_SECTION = "requestorSection";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.EVENT = "event";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.CHARGED = "charged";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.PRIORITY = "priority";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.DATE_COMPLETED = "dateCompleted";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.TREATMENT_DAYS = "treatmentDays";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.COMPLETING_OFFICER = "completingOfficer";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.DATE_DISPATCHED = "dateDispatched";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.CONSERVATION_FILE = "conservationFile";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RequestRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Request> RequestRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QRequest request = QRequest.request;
        
        JPQLQuery<Request> query = from(request);
        
        Path<?>[] paths = new Path<?>[] {request.requestor,request.requestorPhone,request.requestorSection,request.event,request.charged,request.priority,request.dateCompleted,request.treatmentDays,request.completingOfficer,request.dateDispatched,request.conservationFile,request.createdDate,request.createdBy,request.modifiedDate,request.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(REQUESTOR, request.requestor)
			.map(REQUESTOR_PHONE, request.requestorPhone)
			.map(REQUESTOR_SECTION, request.requestorSection)
			.map(EVENT, request.event)
			.map(CHARGED, request.charged)
			.map(PRIORITY, request.priority)
			.map(DATE_COMPLETED, request.dateCompleted)
			.map(TREATMENT_DAYS, request.treatmentDays)
			.map(COMPLETING_OFFICER, request.completingOfficer)
			.map(DATE_DISPATCHED, request.dateDispatched)
			.map(CONSERVATION_FILE, request.conservationFile)
			.map(CREATED_DATE, request.createdDate)
			.map(CREATED_BY, request.createdBy)
			.map(MODIFIED_DATE, request.modifiedDate)
			.map(MODIFIED_BY, request.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, request);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Request> RequestRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QRequest request = QRequest.request;
        
        JPQLQuery<Request> query = from(request);
        
        Path<?>[] paths = new Path<?>[] {request.requestor,request.requestorPhone,request.requestorSection,request.event,request.charged,request.priority,request.dateCompleted,request.treatmentDays,request.completingOfficer,request.dateDispatched,request.conservationFile,request.createdDate,request.createdBy,request.modifiedDate,request.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(request.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(REQUESTOR, request.requestor)
			.map(REQUESTOR_PHONE, request.requestorPhone)
			.map(REQUESTOR_SECTION, request.requestorSection)
			.map(EVENT, request.event)
			.map(CHARGED, request.charged)
			.map(PRIORITY, request.priority)
			.map(DATE_COMPLETED, request.dateCompleted)
			.map(TREATMENT_DAYS, request.treatmentDays)
			.map(COMPLETING_OFFICER, request.completingOfficer)
			.map(DATE_DISPATCHED, request.dateDispatched)
			.map(CONSERVATION_FILE, request.conservationFile)
			.map(CREATED_DATE, request.createdDate)
			.map(CREATED_BY, request.createdBy)
			.map(MODIFIED_DATE, request.modifiedDate)
			.map(MODIFIED_BY, request.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, request);
    }
    
}
