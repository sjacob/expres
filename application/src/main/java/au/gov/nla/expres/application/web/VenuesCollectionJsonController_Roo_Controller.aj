// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.VenuesCollectionJsonController;
import au.gov.nla.expres.service.api.VenueService;

privileged aspect VenuesCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VenueService VenuesCollectionJsonController.venueService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return VenueService
     */
    public VenueService VenuesCollectionJsonController.getVenueService() {
        return venueService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venueService
     */
    public void VenuesCollectionJsonController.setVenueService(VenueService venueService) {
        this.venueService = venueService;
    }
    
}
