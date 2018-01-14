// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.Request;
import au.gov.nla.expres.model.TreatementItem;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Request_Roo_Jpa_Entity {
    
    declare @type: Request: @Entity;
    
    declare @type: Request: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Request.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Request.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param requestItemsToAdd
     */
    public void Request.addToRequestItems(Iterable<TreatementItem> requestItemsToAdd) {
        Assert.notNull(requestItemsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (TreatementItem item : requestItemsToAdd) {
            this.requestItems.add(item);
            item.setRequest(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param requestItemsToRemove
     */
    public void Request.removeFromRequestItems(Iterable<TreatementItem> requestItemsToRemove) {
        Assert.notNull(requestItemsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (TreatementItem item : requestItemsToRemove) {
            this.requestItems.remove(item);
            item.setRequest(null);
        }
    }
    
}