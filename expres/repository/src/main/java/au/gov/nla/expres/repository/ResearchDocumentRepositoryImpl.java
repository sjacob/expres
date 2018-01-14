package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.ResearchDocument;

/**
 * = ResearchDocumentRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ResearchDocumentRepositoryCustom.class)
public class ResearchDocumentRepositoryImpl extends QueryDslRepositorySupportExt<ResearchDocument> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ResearchDocumentRepositoryImpl() {
        super(ResearchDocument.class);
    }
}