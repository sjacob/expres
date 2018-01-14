package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.ExhibitionItem;

/**
 * = ExhibitionItemRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ExhibitionItemRepositoryCustom.class)
public class ExhibitionItemRepositoryImpl extends QueryDslRepositorySupportExt<ExhibitionItem> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ExhibitionItemRepositoryImpl() {
        super(ExhibitionItem.class);
    }
}