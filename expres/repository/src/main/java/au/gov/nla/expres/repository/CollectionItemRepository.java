package au.gov.nla.expres.repository;
import au.gov.nla.expres.model.CollectionItem;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = CollectionItemRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = CollectionItem.class, finders = { @RooFinder(value = "findByTitle", returnType = CollectionItem.class) })
public interface CollectionItemRepository {
}
