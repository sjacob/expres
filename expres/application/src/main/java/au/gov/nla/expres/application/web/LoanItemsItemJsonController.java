package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.LoanItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = LoanItemsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = LoanItem.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class LoanItemsItemJsonController {
}
