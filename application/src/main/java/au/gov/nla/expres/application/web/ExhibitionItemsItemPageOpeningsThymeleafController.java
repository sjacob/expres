package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.ExhibitionItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ExhibitionItemsItemPageOpeningsThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ExhibitionItem.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "pageOpenings", views = { "show" })
@RooThymeleaf
public class ExhibitionItemsItemPageOpeningsThymeleafController {
}
