package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.Contact;

/**
 * = ContactRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ContactRepositoryCustom.class)
public class ContactRepositoryImpl extends QueryDslRepositorySupportExt<Contact> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ContactRepositoryImpl() {
        super(Contact.class);
    }
}