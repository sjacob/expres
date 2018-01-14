package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.ExhibitionItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ExhibitionItemsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ExhibitionItem.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class ExhibitionItemsItemJsonController {
}
