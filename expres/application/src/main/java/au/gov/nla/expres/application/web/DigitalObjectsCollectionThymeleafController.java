package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.DigitalObject;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = DigitalObjectsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = DigitalObject.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class DigitalObjectsCollectionThymeleafController {
}
