// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.CollectionItemDeserializer;
import au.gov.nla.expres.application.web.MovementJsonMixin;
import au.gov.nla.expres.model.CollectionItem;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

privileged aspect MovementJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CollectionItemDeserializer.class)
    private CollectionItem MovementJsonMixin.mItem;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CollectionItem
     */
    public CollectionItem MovementJsonMixin.getMItem() {
        return mItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mItem
     */
    public void MovementJsonMixin.setMItem(CollectionItem mItem) {
        this.mItem = mItem;
    }
    
}
