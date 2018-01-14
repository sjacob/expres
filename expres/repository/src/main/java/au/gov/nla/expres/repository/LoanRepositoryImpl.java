package au.gov.nla.expres.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import au.gov.nla.expres.model.Loan;

/**
 * = LoanRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = LoanRepositoryCustom.class)
public class LoanRepositoryImpl extends QueryDslRepositorySupportExt<Loan> {

    /**
     * TODO Auto-generated constructor documentation
     */
    LoanRepositoryImpl() {
        super(Loan.class);
    }
}