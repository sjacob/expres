// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.RequestsItemJsonController;
import au.gov.nla.expres.service.api.RequestService;

privileged aspect RequestsItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RequestService RequestsItemJsonController.requestService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RequestService
     */
    public RequestService RequestsItemJsonController.getRequestService() {
        return requestService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param requestService
     */
    public void RequestsItemJsonController.setRequestService(RequestService requestService) {
        this.requestService = requestService;
    }
    
}
