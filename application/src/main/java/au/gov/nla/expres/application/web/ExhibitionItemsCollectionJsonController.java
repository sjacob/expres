package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.ExhibitionItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ExhibitionItemsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ExhibitionItem.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class ExhibitionItemsCollectionJsonController {
}
