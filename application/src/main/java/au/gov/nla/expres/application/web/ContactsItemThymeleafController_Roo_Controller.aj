// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ContactsItemThymeleafController;
import au.gov.nla.expres.service.api.ContactService;

privileged aspect ContactsItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContactService ContactsItemThymeleafController.contactService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContactService
     */
    public ContactService ContactsItemThymeleafController.getContactService() {
        return contactService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contactService
     */
    public void ContactsItemThymeleafController.setContactService(ContactService contactService) {
        this.contactService = contactService;
    }
    
}
