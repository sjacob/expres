// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.TreatementItemDeserializer;
import au.gov.nla.expres.application.web.TreatmentJsonMixin;
import au.gov.nla.expres.model.TreatementItem;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

privileged aspect TreatmentJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = TreatementItemDeserializer.class)
    private TreatementItem TreatmentJsonMixin.tItem;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return TreatementItem
     */
    public TreatementItem TreatmentJsonMixin.getTItem() {
        return tItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     */
    public void TreatmentJsonMixin.setTItem(TreatementItem tItem) {
        this.tItem = tItem;
    }
    
}
