// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.CollectionItemDeserializer;
import au.gov.nla.expres.application.web.ExhibitionDeserializer;
import au.gov.nla.expres.application.web.ResearchDocumentJsonMixin;
import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Exhibition;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

privileged aspect ResearchDocumentJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = ExhibitionDeserializer.class)
    private Exhibition ResearchDocumentJsonMixin.exhibition;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CollectionItemDeserializer.class)
    private CollectionItem ResearchDocumentJsonMixin.rdItem;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Exhibition
     */
    public Exhibition ResearchDocumentJsonMixin.getExhibition() {
        return exhibition;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     */
    public void ResearchDocumentJsonMixin.setExhibition(Exhibition exhibition) {
        this.exhibition = exhibition;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CollectionItem
     */
    public CollectionItem ResearchDocumentJsonMixin.getRdItem() {
        return rdItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rdItem
     */
    public void ResearchDocumentJsonMixin.setRdItem(CollectionItem rdItem) {
        this.rdItem = rdItem;
    }
    
}