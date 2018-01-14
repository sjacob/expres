package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.TreatementItem;

/**
 * = TreatementItemRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = TreatementItemRepositoryCustom.class)
public class TreatementItemRepositoryImpl extends QueryDslRepositorySupportExt<TreatementItem> {

    /**
     * TODO Auto-generated constructor documentation
     */
    TreatementItemRepositoryImpl() {
        super(TreatementItem.class);
    }
}