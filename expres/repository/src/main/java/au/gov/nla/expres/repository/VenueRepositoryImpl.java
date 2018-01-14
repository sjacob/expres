package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.Venue;

/**
 * = VenueRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = VenueRepositoryCustom.class)
public class VenueRepositoryImpl extends QueryDslRepositorySupportExt<Venue> {

    /**
     * TODO Auto-generated constructor documentation
     */
    VenueRepositoryImpl() {
        super(Venue.class);
    }
}