// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ContactsCollectionThymeleafController;
import au.gov.nla.expres.service.api.ContactService;

privileged aspect ContactsCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContactService ContactsCollectionThymeleafController.contactService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContactService
     */
    public ContactService ContactsCollectionThymeleafController.getContactService() {
        return contactService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contactService
     */
    public void ContactsCollectionThymeleafController.setContactService(ContactService contactService) {
        this.contactService = contactService;
    }
    
}