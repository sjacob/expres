package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.ResearchDocument;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ResearchDocumentsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ResearchDocument.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ResearchDocumentsCollectionThymeleafController {
}
