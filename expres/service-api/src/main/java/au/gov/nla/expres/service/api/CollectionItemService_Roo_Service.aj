// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.service.api;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.service.api.CollectionItemService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect CollectionItemService_Roo_Service {
    
    declare parents: CollectionItemService extends EntityResolver<CollectionItem, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     */
    public abstract void CollectionItemService.delete(CollectionItem collectionItem);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<CollectionItem> CollectionItemService.save(Iterable<CollectionItem> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void CollectionItemService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.save(CollectionItem entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<CollectionItem> CollectionItemService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<CollectionItem> CollectionItemService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long CollectionItemService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CollectionItem> CollectionItemService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CollectionItem> CollectionItemService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param exhibitionsToAdd
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.addToExhibitions(CollectionItem collectionItem, Iterable<Long> exhibitionsToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param exhibitionsToRemove
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.removeFromExhibitions(CollectionItem collectionItem, Iterable<Long> exhibitionsToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param exhibitions
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.setExhibitions(CollectionItem collectionItem, Iterable<Long> exhibitions);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param loansToAdd
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.addToLoans(CollectionItem collectionItem, Iterable<Long> loansToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param loansToRemove
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.removeFromLoans(CollectionItem collectionItem, Iterable<Long> loansToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param loans
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.setLoans(CollectionItem collectionItem, Iterable<Long> loans);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param movementsToAdd
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.addToMovements(CollectionItem collectionItem, Iterable<Long> movementsToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param movementsToRemove
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.removeFromMovements(CollectionItem collectionItem, Iterable<Long> movementsToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param movements
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.setMovements(CollectionItem collectionItem, Iterable<Long> movements);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param photosToAdd
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.addToPhotos(CollectionItem collectionItem, Iterable<Long> photosToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param photosToRemove
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.removeFromPhotos(CollectionItem collectionItem, Iterable<Long> photosToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param photos
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.setPhotos(CollectionItem collectionItem, Iterable<Long> photos);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param researchDocumentsToAdd
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.addToResearchDocuments(CollectionItem collectionItem, Iterable<Long> researchDocumentsToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param researchDocumentsToRemove
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.removeFromResearchDocuments(CollectionItem collectionItem, Iterable<Long> researchDocumentsToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param researchDocuments
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.setResearchDocuments(CollectionItem collectionItem, Iterable<Long> researchDocuments);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatmentsToAdd
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.addToTreatments(CollectionItem collectionItem, Iterable<Long> treatmentsToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatmentsToRemove
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.removeFromTreatments(CollectionItem collectionItem, Iterable<Long> treatmentsToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatments
     * @return CollectionItem
     */
    public abstract CollectionItem CollectionItemService.setTreatments(CollectionItem collectionItem, Iterable<Long> treatments);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param title
     * @param pageable
     * @return Page
     */
    public abstract Page<CollectionItem> CollectionItemService.findByTitle(String title, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param title
     * @return Long
     */
    public abstract long CollectionItemService.countByTitle(String title);
    
}