package au.gov.nla.expres.repository;
import au.gov.nla.expres.model.Request;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = RequestRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Request.class, finders = { @RooFinder(value = "findByRequestor", returnType = Request.class) })
public interface RequestRepository {
}
