package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.Request;

/**
 * = RequestRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = RequestRepositoryCustom.class)
public class RequestRepositoryImpl extends QueryDslRepositorySupportExt<Request> {

    /**
     * TODO Auto-generated constructor documentation
     */
    RequestRepositoryImpl() {
        super(Request.class);
    }
}