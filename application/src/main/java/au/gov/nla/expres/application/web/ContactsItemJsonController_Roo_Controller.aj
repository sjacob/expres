// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ContactsItemJsonController;
import au.gov.nla.expres.service.api.ContactService;

privileged aspect ContactsItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContactService ContactsItemJsonController.contactService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContactService
     */
    public ContactService ContactsItemJsonController.getContactService() {
        return contactService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contactService
     */
    public void ContactsItemJsonController.setContactService(ContactService contactService) {
        this.contactService = contactService;
    }
    
}