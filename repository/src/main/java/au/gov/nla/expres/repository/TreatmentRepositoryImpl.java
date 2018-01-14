package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.Treatment;

/**
 * = TreatmentRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = TreatmentRepositoryCustom.class)
public class TreatmentRepositoryImpl extends QueryDslRepositorySupportExt<Treatment> {

    /**
     * TODO Auto-generated constructor documentation
     */
    TreatmentRepositoryImpl() {
        super(Treatment.class);
    }
}