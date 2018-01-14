package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.CollectionItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CollectionItemsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = CollectionItem.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class CollectionItemsCollectionJsonController {
}
