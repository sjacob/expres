package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Venue;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = VenuesCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Venue.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class VenuesCollectionJsonController {
}
