package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.DigitalObject;

/**
 * = DigitalObjectRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = DigitalObjectRepositoryCustom.class)
public class DigitalObjectRepositoryImpl extends QueryDslRepositorySupportExt<DigitalObject> {

    /**
     * TODO Auto-generated constructor documentation
     */
    DigitalObjectRepositoryImpl() {
        super(DigitalObject.class);
    }
}