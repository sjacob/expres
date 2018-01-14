package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.PageOpening;

/**
 * = PageOpeningRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = PageOpeningRepositoryCustom.class)
public class PageOpeningRepositoryImpl extends QueryDslRepositorySupportExt<PageOpening> {

    /**
     * TODO Auto-generated constructor documentation
     */
    PageOpeningRepositoryImpl() {
        super(PageOpening.class);
    }
}