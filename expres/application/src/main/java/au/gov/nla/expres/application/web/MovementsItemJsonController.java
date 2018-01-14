package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Movement;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = MovementsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Movement.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class MovementsItemJsonController {
}
