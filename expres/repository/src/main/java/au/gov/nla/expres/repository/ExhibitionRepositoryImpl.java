package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.Exhibition;

/**
 * = ExhibitionRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ExhibitionRepositoryCustom.class)
public class ExhibitionRepositoryImpl extends QueryDslRepositorySupportExt<Exhibition> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ExhibitionRepositoryImpl() {
        super(Exhibition.class);
    }
}