// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ContactsItemLoansThymeleafController;
import au.gov.nla.expres.service.api.ContactService;
import au.gov.nla.expres.service.api.LoanService;

privileged aspect ContactsItemLoansThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContactService ContactsItemLoansThymeleafController.contactService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LoanService ContactsItemLoansThymeleafController.loanService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContactService
     */
    public ContactService ContactsItemLoansThymeleafController.getContactService() {
        return contactService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contactService
     */
    public void ContactsItemLoansThymeleafController.setContactService(ContactService contactService) {
        this.contactService = contactService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LoanService
     */
    public LoanService ContactsItemLoansThymeleafController.getLoanService() {
        return loanService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanService
     */
    public void ContactsItemLoansThymeleafController.setLoanService(LoanService loanService) {
        this.loanService = loanService;
    }
    
}