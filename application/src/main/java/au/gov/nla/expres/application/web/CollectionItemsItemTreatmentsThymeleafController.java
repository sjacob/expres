package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.CollectionItem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CollectionItemsItemTreatmentsThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = CollectionItem.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "treatments", views = { "show" })
@RooThymeleaf
public class CollectionItemsItemTreatmentsThymeleafController {
}
