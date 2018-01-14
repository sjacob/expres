// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.service.impl;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.DigitalObject;
import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.model.Movement;
import au.gov.nla.expres.model.ResearchDocument;
import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.repository.CollectionItemRepository;
import au.gov.nla.expres.service.api.DigitalObjectService;
import au.gov.nla.expres.service.api.ExhibitionItemService;
import au.gov.nla.expres.service.api.LoanItemService;
import au.gov.nla.expres.service.api.MovementService;
import au.gov.nla.expres.service.api.ResearchDocumentService;
import au.gov.nla.expres.service.api.TreatementItemService;
import au.gov.nla.expres.service.impl.CollectionItemServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CollectionItemServiceImpl_Roo_Service_Impl {
    
    declare @type: CollectionItemServiceImpl: @Service;
    
    declare @type: CollectionItemServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CollectionItemRepository CollectionItemServiceImpl.collectionItemRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private DigitalObjectService CollectionItemServiceImpl.digitalObjectService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ExhibitionItemService CollectionItemServiceImpl.exhibitionItemService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LoanItemService CollectionItemServiceImpl.loanItemService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MovementService CollectionItemServiceImpl.movementService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ResearchDocumentService CollectionItemServiceImpl.researchDocumentService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private TreatementItemService CollectionItemServiceImpl.treatementItemService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param collectionItemRepository
     * @param digitalObjectService
     * @param exhibitionItemService
     * @param loanItemService
     * @param movementService
     * @param researchDocumentService
     * @param treatementItemService
     */
    @Autowired
    public CollectionItemServiceImpl.new(CollectionItemRepository collectionItemRepository, @Lazy DigitalObjectService digitalObjectService, @Lazy ExhibitionItemService exhibitionItemService, @Lazy LoanItemService loanItemService, @Lazy MovementService movementService, @Lazy ResearchDocumentService researchDocumentService, @Lazy TreatementItemService treatementItemService) {
        setCollectionItemRepository(collectionItemRepository);
        setDigitalObjectService(digitalObjectService);
        setExhibitionItemService(exhibitionItemService);
        setLoanItemService(loanItemService);
        setMovementService(movementService);
        setResearchDocumentService(researchDocumentService);
        setTreatementItemService(treatementItemService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CollectionItemRepository
     */
    public CollectionItemRepository CollectionItemServiceImpl.getCollectionItemRepository() {
        return collectionItemRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItemRepository
     */
    public void CollectionItemServiceImpl.setCollectionItemRepository(CollectionItemRepository collectionItemRepository) {
        this.collectionItemRepository = collectionItemRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return DigitalObjectService
     */
    public DigitalObjectService CollectionItemServiceImpl.getDigitalObjectService() {
        return digitalObjectService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param digitalObjectService
     */
    public void CollectionItemServiceImpl.setDigitalObjectService(DigitalObjectService digitalObjectService) {
        this.digitalObjectService = digitalObjectService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ExhibitionItemService
     */
    public ExhibitionItemService CollectionItemServiceImpl.getExhibitionItemService() {
        return exhibitionItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionItemService
     */
    public void CollectionItemServiceImpl.setExhibitionItemService(ExhibitionItemService exhibitionItemService) {
        this.exhibitionItemService = exhibitionItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LoanItemService
     */
    public LoanItemService CollectionItemServiceImpl.getLoanItemService() {
        return loanItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanItemService
     */
    public void CollectionItemServiceImpl.setLoanItemService(LoanItemService loanItemService) {
        this.loanItemService = loanItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MovementService
     */
    public MovementService CollectionItemServiceImpl.getMovementService() {
        return movementService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movementService
     */
    public void CollectionItemServiceImpl.setMovementService(MovementService movementService) {
        this.movementService = movementService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ResearchDocumentService
     */
    public ResearchDocumentService CollectionItemServiceImpl.getResearchDocumentService() {
        return researchDocumentService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocumentService
     */
    public void CollectionItemServiceImpl.setResearchDocumentService(ResearchDocumentService researchDocumentService) {
        this.researchDocumentService = researchDocumentService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return TreatementItemService
     */
    public TreatementItemService CollectionItemServiceImpl.getTreatementItemService() {
        return treatementItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatementItemService
     */
    public void CollectionItemServiceImpl.setTreatementItemService(TreatementItemService treatementItemService) {
        this.treatementItemService = treatementItemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param exhibitionsToAdd
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.addToExhibitions(CollectionItem collectionItem, Iterable<Long> exhibitionsToAdd) {
        List<ExhibitionItem> exhibitions = getExhibitionItemService().findAll(exhibitionsToAdd);
        collectionItem.addToExhibitions(exhibitions);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param loansToAdd
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.addToLoans(CollectionItem collectionItem, Iterable<Long> loansToAdd) {
        List<LoanItem> loans = getLoanItemService().findAll(loansToAdd);
        collectionItem.addToLoans(loans);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param movementsToAdd
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.addToMovements(CollectionItem collectionItem, Iterable<Long> movementsToAdd) {
        List<Movement> movements = getMovementService().findAll(movementsToAdd);
        collectionItem.addToMovements(movements);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param photosToAdd
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.addToPhotos(CollectionItem collectionItem, Iterable<Long> photosToAdd) {
        List<DigitalObject> photos = getDigitalObjectService().findAll(photosToAdd);
        collectionItem.addToPhotos(photos);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param researchDocumentsToAdd
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.addToResearchDocuments(CollectionItem collectionItem, Iterable<Long> researchDocumentsToAdd) {
        List<ResearchDocument> researchDocuments = getResearchDocumentService().findAll(researchDocumentsToAdd);
        collectionItem.addToResearchDocuments(researchDocuments);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatmentsToAdd
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.addToTreatments(CollectionItem collectionItem, Iterable<Long> treatmentsToAdd) {
        List<TreatementItem> treatments = getTreatementItemService().findAll(treatmentsToAdd);
        collectionItem.addToTreatments(treatments);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param exhibitionsToRemove
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.removeFromExhibitions(CollectionItem collectionItem, Iterable<Long> exhibitionsToRemove) {
        List<ExhibitionItem> exhibitions = getExhibitionItemService().findAll(exhibitionsToRemove);
        collectionItem.removeFromExhibitions(exhibitions);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param loansToRemove
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.removeFromLoans(CollectionItem collectionItem, Iterable<Long> loansToRemove) {
        List<LoanItem> loans = getLoanItemService().findAll(loansToRemove);
        collectionItem.removeFromLoans(loans);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param movementsToRemove
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.removeFromMovements(CollectionItem collectionItem, Iterable<Long> movementsToRemove) {
        List<Movement> movements = getMovementService().findAll(movementsToRemove);
        collectionItem.removeFromMovements(movements);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param photosToRemove
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.removeFromPhotos(CollectionItem collectionItem, Iterable<Long> photosToRemove) {
        List<DigitalObject> photos = getDigitalObjectService().findAll(photosToRemove);
        collectionItem.removeFromPhotos(photos);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param researchDocumentsToRemove
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.removeFromResearchDocuments(CollectionItem collectionItem, Iterable<Long> researchDocumentsToRemove) {
        List<ResearchDocument> researchDocuments = getResearchDocumentService().findAll(researchDocumentsToRemove);
        collectionItem.removeFromResearchDocuments(researchDocuments);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatmentsToRemove
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.removeFromTreatments(CollectionItem collectionItem, Iterable<Long> treatmentsToRemove) {
        List<TreatementItem> treatments = getTreatementItemService().findAll(treatmentsToRemove);
        collectionItem.removeFromTreatments(treatments);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param exhibitions
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.setExhibitions(CollectionItem collectionItem, Iterable<Long> exhibitions) {
        List<ExhibitionItem> items = getExhibitionItemService().findAll(exhibitions);
        Set<ExhibitionItem> currents = collectionItem.getExhibitions();
        Set<ExhibitionItem> toRemove = new HashSet<ExhibitionItem>();
        for (Iterator<ExhibitionItem> iterator = currents.iterator(); iterator.hasNext();) {
            ExhibitionItem nextExhibitionItem = iterator.next();
            if (items.contains(nextExhibitionItem)) {
                items.remove(nextExhibitionItem);
            } else {
                toRemove.add(nextExhibitionItem);
            }
        }
        collectionItem.removeFromExhibitions(toRemove);
        collectionItem.addToExhibitions(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        collectionItem.setVersion(collectionItem.getVersion() + 1);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param loans
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.setLoans(CollectionItem collectionItem, Iterable<Long> loans) {
        List<LoanItem> items = getLoanItemService().findAll(loans);
        Set<LoanItem> currents = collectionItem.getLoans();
        Set<LoanItem> toRemove = new HashSet<LoanItem>();
        for (Iterator<LoanItem> iterator = currents.iterator(); iterator.hasNext();) {
            LoanItem nextLoanItem = iterator.next();
            if (items.contains(nextLoanItem)) {
                items.remove(nextLoanItem);
            } else {
                toRemove.add(nextLoanItem);
            }
        }
        collectionItem.removeFromLoans(toRemove);
        collectionItem.addToLoans(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        collectionItem.setVersion(collectionItem.getVersion() + 1);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param movements
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.setMovements(CollectionItem collectionItem, Iterable<Long> movements) {
        List<Movement> items = getMovementService().findAll(movements);
        Set<Movement> currents = collectionItem.getMovements();
        Set<Movement> toRemove = new HashSet<Movement>();
        for (Iterator<Movement> iterator = currents.iterator(); iterator.hasNext();) {
            Movement nextMovement = iterator.next();
            if (items.contains(nextMovement)) {
                items.remove(nextMovement);
            } else {
                toRemove.add(nextMovement);
            }
        }
        collectionItem.removeFromMovements(toRemove);
        collectionItem.addToMovements(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        collectionItem.setVersion(collectionItem.getVersion() + 1);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param photos
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.setPhotos(CollectionItem collectionItem, Iterable<Long> photos) {
        List<DigitalObject> items = getDigitalObjectService().findAll(photos);
        Set<DigitalObject> currents = collectionItem.getPhotos();
        Set<DigitalObject> toRemove = new HashSet<DigitalObject>();
        for (Iterator<DigitalObject> iterator = currents.iterator(); iterator.hasNext();) {
            DigitalObject nextDigitalObject = iterator.next();
            if (items.contains(nextDigitalObject)) {
                items.remove(nextDigitalObject);
            } else {
                toRemove.add(nextDigitalObject);
            }
        }
        collectionItem.removeFromPhotos(toRemove);
        collectionItem.addToPhotos(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        collectionItem.setVersion(collectionItem.getVersion() + 1);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param researchDocuments
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.setResearchDocuments(CollectionItem collectionItem, Iterable<Long> researchDocuments) {
        List<ResearchDocument> items = getResearchDocumentService().findAll(researchDocuments);
        Set<ResearchDocument> currents = collectionItem.getResearchDocuments();
        Set<ResearchDocument> toRemove = new HashSet<ResearchDocument>();
        for (Iterator<ResearchDocument> iterator = currents.iterator(); iterator.hasNext();) {
            ResearchDocument nextResearchDocument = iterator.next();
            if (items.contains(nextResearchDocument)) {
                items.remove(nextResearchDocument);
            } else {
                toRemove.add(nextResearchDocument);
            }
        }
        collectionItem.removeFromResearchDocuments(toRemove);
        collectionItem.addToResearchDocuments(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        collectionItem.setVersion(collectionItem.getVersion() + 1);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatments
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.setTreatments(CollectionItem collectionItem, Iterable<Long> treatments) {
        List<TreatementItem> items = getTreatementItemService().findAll(treatments);
        Set<TreatementItem> currents = collectionItem.getTreatments();
        Set<TreatementItem> toRemove = new HashSet<TreatementItem>();
        for (Iterator<TreatementItem> iterator = currents.iterator(); iterator.hasNext();) {
            TreatementItem nextTreatementItem = iterator.next();
            if (items.contains(nextTreatementItem)) {
                items.remove(nextTreatementItem);
            } else {
                toRemove.add(nextTreatementItem);
            }
        }
        collectionItem.removeFromTreatments(toRemove);
        collectionItem.addToTreatments(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        collectionItem.setVersion(collectionItem.getVersion() + 1);
        return getCollectionItemRepository().save(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     */
    @Transactional
    public void CollectionItemServiceImpl.delete(CollectionItem collectionItem) {
        // Clear bidirectional one-to-many parent relationship with ExhibitionItem
        for (ExhibitionItem item : collectionItem.getExhibitions()) {
            item.setEItem(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with LoanItem
        for (LoanItem item : collectionItem.getLoans()) {
            item.setLItem(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with Movement
        for (Movement item : collectionItem.getMovements()) {
            item.setMItem(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with DigitalObject
        for (DigitalObject item : collectionItem.getPhotos()) {
            item.setDoItem(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with ResearchDocument
        for (ResearchDocument item : collectionItem.getResearchDocuments()) {
            item.setRdItem(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with TreatementItem
        for (TreatementItem item : collectionItem.getTreatments()) {
            item.setTItem(null);
        }
        
        getCollectionItemRepository().delete(collectionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<CollectionItem> CollectionItemServiceImpl.save(Iterable<CollectionItem> entities) {
        return getCollectionItemRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void CollectionItemServiceImpl.delete(Iterable<Long> ids) {
        List<CollectionItem> toDelete = getCollectionItemRepository().findAll(ids);
        getCollectionItemRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return CollectionItem
     */
    @Transactional
    public CollectionItem CollectionItemServiceImpl.save(CollectionItem entity) {
        return getCollectionItemRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return CollectionItem
     */
    public CollectionItem CollectionItemServiceImpl.findOne(Long id) {
        return getCollectionItemRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return CollectionItem
     */
    public CollectionItem CollectionItemServiceImpl.findOneForUpdate(Long id) {
        return getCollectionItemRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<CollectionItem> CollectionItemServiceImpl.findAll(Iterable<Long> ids) {
        return getCollectionItemRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<CollectionItem> CollectionItemServiceImpl.findAll() {
        return getCollectionItemRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CollectionItemServiceImpl.count() {
        return getCollectionItemRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CollectionItem> CollectionItemServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCollectionItemRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CollectionItem> CollectionItemServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getCollectionItemRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param title
     * @param pageable
     * @return Page
     */
    public Page<CollectionItem> CollectionItemServiceImpl.findByTitle(String title, Pageable pageable) {
        return getCollectionItemRepository().findByTitle(title, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param title
     * @return Long
     */
    public long CollectionItemServiceImpl.countByTitle(String title) {
        return getCollectionItemRepository().countByTitle(title);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<CollectionItem> CollectionItemServiceImpl.getEntityType() {
        return CollectionItem.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CollectionItemServiceImpl.getIdType() {
        return Long.class;
    }
    
}