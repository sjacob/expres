// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ExhibitionJsonMixin;
import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.model.ResearchDocument;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Set;

privileged aspect ExhibitionJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<ExhibitionItem> ExhibitionJsonMixin.exhibitionItems;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<ResearchDocument> ExhibitionJsonMixin.researchDocuments;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<ExhibitionItem> ExhibitionJsonMixin.getExhibitionItems() {
        return exhibitionItems;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionItems
     */
    public void ExhibitionJsonMixin.setExhibitionItems(Set<ExhibitionItem> exhibitionItems) {
        this.exhibitionItems = exhibitionItems;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<ResearchDocument> ExhibitionJsonMixin.getResearchDocuments() {
        return researchDocuments;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param researchDocuments
     */
    public void ExhibitionJsonMixin.setResearchDocuments(Set<ResearchDocument> researchDocuments) {
        this.researchDocuments = researchDocuments;
    }
    
}