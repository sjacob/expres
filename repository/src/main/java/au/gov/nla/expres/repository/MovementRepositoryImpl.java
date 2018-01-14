package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.Movement;

/**
 * = MovementRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = MovementRepositoryCustom.class)
public class MovementRepositoryImpl extends QueryDslRepositorySupportExt<Movement> {

    /**
     * TODO Auto-generated constructor documentation
     */
    MovementRepositoryImpl() {
        super(Movement.class);
    }
}