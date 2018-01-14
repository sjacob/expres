// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.CollectionItemDeserializer;
import au.gov.nla.expres.application.web.RequestDeserializer;
import au.gov.nla.expres.application.web.TreatementItemJsonMixin;
import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Request;
import au.gov.nla.expres.model.Treatment;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.Set;

privileged aspect TreatementItemJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Treatment> TreatementItemJsonMixin.treatments;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = RequestDeserializer.class)
    private Request TreatementItemJsonMixin.request;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CollectionItemDeserializer.class)
    private CollectionItem TreatementItemJsonMixin.tItem;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Treatment> TreatementItemJsonMixin.getTreatments() {
        return treatments;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatments
     */
    public void TreatementItemJsonMixin.setTreatments(Set<Treatment> treatments) {
        this.treatments = treatments;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Request
     */
    public Request TreatementItemJsonMixin.getRequest() {
        return request;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param request
     */
    public void TreatementItemJsonMixin.setRequest(Request request) {
        this.request = request;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CollectionItem
     */
    public CollectionItem TreatementItemJsonMixin.getTItem() {
        return tItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     */
    public void TreatementItemJsonMixin.setTItem(CollectionItem tItem) {
        this.tItem = tItem;
    }
    
}