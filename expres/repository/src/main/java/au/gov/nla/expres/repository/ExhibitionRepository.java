package au.gov.nla.expres.repository;
import au.gov.nla.expres.model.Exhibition;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = ExhibitionRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Exhibition.class, finders = { @RooFinder(value = "findByTitle", returnType = Exhibition.class) })
public interface ExhibitionRepository {
}
