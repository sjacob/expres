package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.Treatment;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = TreatmentsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Treatment.class, type = ControllerType.ITEM)
@RooThymeleaf
public class TreatmentsItemThymeleafController {
}
