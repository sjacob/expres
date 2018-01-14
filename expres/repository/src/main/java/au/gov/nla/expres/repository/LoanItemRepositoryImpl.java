package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.LoanItem;

/**
 * = LoanItemRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = LoanItemRepositoryCustom.class)
public class LoanItemRepositoryImpl extends QueryDslRepositorySupportExt<LoanItem> {

    /**
     * TODO Auto-generated constructor documentation
     */
    LoanItemRepositoryImpl() {
        super(LoanItem.class);
    }
}