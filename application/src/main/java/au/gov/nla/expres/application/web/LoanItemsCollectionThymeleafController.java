package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.LoanItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = LoanItemsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = LoanItem.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class LoanItemsCollectionThymeleafController {
}
