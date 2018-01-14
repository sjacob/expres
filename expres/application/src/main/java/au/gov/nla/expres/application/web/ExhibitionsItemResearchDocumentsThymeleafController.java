package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Exhibition;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ExhibitionsItemResearchDocumentsThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Exhibition.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "researchDocuments", views = { "show" })
@RooThymeleaf
public class ExhibitionsItemResearchDocumentsThymeleafController {
}
