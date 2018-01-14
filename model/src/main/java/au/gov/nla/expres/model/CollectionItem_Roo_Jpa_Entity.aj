// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.DigitalObject;
import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.model.Movement;
import au.gov.nla.expres.model.ResearchDocument;
import au.gov.nla.expres.model.TreatementItem;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect CollectionItem_Roo_Jpa_Entity {
    
    declare @type: CollectionItem: @Entity;
    
    declare @type: CollectionItem: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CollectionItem.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CollectionItem.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loansToAdd
     */
    public void CollectionItem.addToLoans(Iterable<LoanItem> loansToAdd) {
        Assert.notNull(loansToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (LoanItem item : loansToAdd) {
            this.loans.add(item);
            item.setLItem(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loansToRemove
     */
    public void CollectionItem.removeFromLoans(Iterable<LoanItem> loansToRemove) {
        Assert.notNull(loansToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (LoanItem item : loansToRemove) {
            this.loans.remove(item);
            item.setLItem(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatmentsToAdd
     */
    public void CollectionItem.addToTreatments(Iterable<TreatementItem> treatmentsToAdd) {
        Assert.notNull(treatmentsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (TreatementItem item : treatmentsToAdd) {
            this.treatments.add(item);
            item.setTItem(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatmentsToRemove
     */
    public void CollectionItem.removeFromTreatments(Iterable<TreatementItem> treatmentsToRemove) {
        Assert.notNull(treatmentsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (TreatementItem item : treatmentsToRemove) {
            this.treatments.remove(item);
            item.setTItem(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionsToAdd
     */
    public void CollectionItem.addToExhibitions(Iterable<ExhibitionItem> exhibitionsToAdd) {
        Assert.notNull(exhibitionsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (ExhibitionItem item : exhibitionsToAdd) {
            this.exhibitions.add(item);
            item.setEItem(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionsToRemove
     */
    public void CollectionItem.removeFromExhibitions(Iterable<ExhibitionItem> exhibitionsToRemove) {
        Assert.notNull(exhibitionsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (ExhibitionItem item : exhibitionsToRemove) {
            this.exhibitions.remove(item);
            item.setEItem(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movementsToAdd
     */
    public void CollectionItem.addToMovements(Iterable<Movement> movementsToAdd) {
        Assert.notNull(movementsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Movement item : movementsToAdd) {
            this.movements.add(item);
            item.setMItem(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movementsToRemove
     */
    public void CollectionItem.removeFromMovements(Iterable<Movement> movementsToRemove) {
        Assert.notNull(movementsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Movement item : movementsToRemove) {
            this.movements.remove(item);
            item.setMItem(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocumentsToAdd
     */
    public void CollectionItem.addToResearchDocuments(Iterable<ResearchDocument> researchDocumentsToAdd) {
        Assert.notNull(researchDocumentsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (ResearchDocument item : researchDocumentsToAdd) {
            this.researchDocuments.add(item);
            item.setRdItem(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocumentsToRemove
     */
    public void CollectionItem.removeFromResearchDocuments(Iterable<ResearchDocument> researchDocumentsToRemove) {
        Assert.notNull(researchDocumentsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (ResearchDocument item : researchDocumentsToRemove) {
            this.researchDocuments.remove(item);
            item.setRdItem(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param photosToAdd
     */
    public void CollectionItem.addToPhotos(Iterable<DigitalObject> photosToAdd) {
        Assert.notNull(photosToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (DigitalObject item : photosToAdd) {
            this.photos.add(item);
            item.setDoItem(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param photosToRemove
     */
    public void CollectionItem.removeFromPhotos(Iterable<DigitalObject> photosToRemove) {
        Assert.notNull(photosToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (DigitalObject item : photosToRemove) {
            this.photos.remove(item);
            item.setDoItem(null);
        }
    }
    
}