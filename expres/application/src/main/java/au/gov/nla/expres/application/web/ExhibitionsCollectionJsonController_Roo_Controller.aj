// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ExhibitionsCollectionJsonController;
import au.gov.nla.expres.service.api.ExhibitionService;

privileged aspect ExhibitionsCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ExhibitionService ExhibitionsCollectionJsonController.exhibitionService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ExhibitionService
     */
    public ExhibitionService ExhibitionsCollectionJsonController.getExhibitionService() {
        return exhibitionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibitionService
     */
    public void ExhibitionsCollectionJsonController.setExhibitionService(ExhibitionService exhibitionService) {
        this.exhibitionService = exhibitionService;
    }
    
}
