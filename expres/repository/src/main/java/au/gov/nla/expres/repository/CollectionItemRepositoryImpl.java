package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.CollectionItem;

/**
 * = CollectionItemRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = CollectionItemRepositoryCustom.class)
public class CollectionItemRepositoryImpl extends QueryDslRepositorySupportExt<CollectionItem> {

    /**
     * TODO Auto-generated constructor documentation
     */
    CollectionItemRepositoryImpl() {
        super(CollectionItem.class);
    }
}