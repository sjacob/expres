package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.TreatementItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = TreatementItemsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = TreatementItem.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class TreatementItemsCollectionThymeleafController {
}
