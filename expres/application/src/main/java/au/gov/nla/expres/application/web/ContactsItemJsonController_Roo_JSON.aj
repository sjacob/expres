// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ContactsItemJsonController;
import au.gov.nla.expres.model.Contact;
import au.gov.nla.expres.service.api.ContactService;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ContactsItemJsonController_Roo_JSON {
    
    declare @type: ContactsItemJsonController: @RestController;
    
    declare @type: ContactsItemJsonController: @RequestMapping(value = "/api/contacts/{contact}", name = "ContactsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param contactService
     */
    @Autowired
    public ContactsItemJsonController.new(ContactService contactService) {
        this.contactService = contactService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Contact
     */
    @ModelAttribute
    public Contact ContactsItemJsonController.getContact(@PathVariable("contact") Long id) {
        Contact contact = contactService.findOne(id);
        if (contact == null) {
            throw new NotFoundException(String.format("Contact with identifier '%s' not found",id));
        }
        return contact;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contact
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ContactsItemJsonController.show(@ModelAttribute Contact contact) {
        return ResponseEntity.ok(contact);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contact
     * @return UriComponents
     */
    public static UriComponents ContactsItemJsonController.showURI(Contact contact) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ContactsItemJsonController.class).show(contact))
            .buildAndExpand(contact.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedContact
     * @param contact
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ContactsItemJsonController.update(@ModelAttribute Contact storedContact, @Valid @RequestBody Contact contact, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        contact.setId(storedContact.getId());
        getContactService().save(contact);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contact
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ContactsItemJsonController.delete(@ModelAttribute Contact contact) {
        getContactService().delete(contact);
        return ResponseEntity.ok().build();
    }
    
}