package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Contact;
import au.gov.nla.expres.service.api.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ContactDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Contact.class)
public class ContactDeserializer extends JsonObjectDeserializer<Contact> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ContactService contactService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param contactService
     * @param conversionService
     */
    @Autowired
    public ContactDeserializer(@Lazy ContactService contactService, ConversionService conversionService) {
        this.contactService = contactService;
        this.conversionService = conversionService;
    }
}
