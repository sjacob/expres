// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.service.api;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Exhibition;
import au.gov.nla.expres.model.ResearchDocument;
import au.gov.nla.expres.service.api.ResearchDocumentService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ResearchDocumentService_Roo_Service {
    
    declare parents: ResearchDocumentService extends EntityResolver<ResearchDocument, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ResearchDocument
     */
    public abstract ResearchDocument ResearchDocumentService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocument
     */
    public abstract void ResearchDocumentService.delete(ResearchDocument researchDocument);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<ResearchDocument> ResearchDocumentService.save(Iterable<ResearchDocument> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ResearchDocumentService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return ResearchDocument
     */
    public abstract ResearchDocument ResearchDocumentService.save(ResearchDocument entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ResearchDocument
     */
    public abstract ResearchDocument ResearchDocumentService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<ResearchDocument> ResearchDocumentService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<ResearchDocument> ResearchDocumentService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ResearchDocumentService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ResearchDocument> ResearchDocumentService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ResearchDocument> ResearchDocumentService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ResearchDocument> ResearchDocumentService.findByExhibition(Exhibition exhibition, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rdItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ResearchDocument> ResearchDocumentService.findByRdItem(CollectionItem rdItem, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @return Long
     */
    public abstract long ResearchDocumentService.countByExhibition(Exhibition exhibition);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rdItem
     * @return Long
     */
    public abstract long ResearchDocumentService.countByRdItem(CollectionItem rdItem);
    
}
