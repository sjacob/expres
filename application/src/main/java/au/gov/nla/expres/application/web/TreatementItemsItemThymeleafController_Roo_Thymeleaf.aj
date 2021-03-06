// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.TreatementItemsCollectionThymeleafController;
import au.gov.nla.expres.application.web.TreatementItemsItemThymeleafController;
import au.gov.nla.expres.application.web.TreatementItemsItemThymeleafLinkFactory;
import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.service.api.TreatementItemService;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect TreatementItemsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: TreatementItemsItemThymeleafController: @Controller;
    
    declare @type: TreatementItemsItemThymeleafController: @RequestMapping(value = "/treatementitems/{treatementItem}", name = "TreatementItemsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource TreatementItemsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<TreatementItemsItemThymeleafController> TreatementItemsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<TreatementItemsCollectionThymeleafController> TreatementItemsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param treatementItemService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public TreatementItemsItemThymeleafController.new(TreatementItemService treatementItemService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setTreatementItemService(treatementItemService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(TreatementItemsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(TreatementItemsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource TreatementItemsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void TreatementItemsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<TreatementItemsItemThymeleafController> TreatementItemsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void TreatementItemsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<TreatementItemsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<TreatementItemsCollectionThymeleafController> TreatementItemsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void TreatementItemsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<TreatementItemsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return TreatementItem
     */
    @ModelAttribute
    public TreatementItem TreatementItemsItemThymeleafController.getTreatementItem(@PathVariable("treatementItem") Long id, Locale locale, HttpMethod method) {
        TreatementItem treatementItem = null;
        if (HttpMethod.PUT.equals(method)) {
            treatementItem = treatementItemService.findOneForUpdate(id);
        } else {
            treatementItem = treatementItemService.findOne(id);
        }
        
        if (treatementItem == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"TreatementItem", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return treatementItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatementItem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView TreatementItemsItemThymeleafController.show(@ModelAttribute TreatementItem treatementItem, Model model) {
        model.addAttribute("treatementItem", treatementItem);
        return new ModelAndView("treatementitems/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatementItem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView TreatementItemsItemThymeleafController.showInline(@ModelAttribute TreatementItem treatementItem, Model model) {
        model.addAttribute("treatementItem", treatementItem);
        return new ModelAndView("treatementitems/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("treatementItem")
    public void TreatementItemsItemThymeleafController.initTreatementItemBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void TreatementItemsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("nextScheduleDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void TreatementItemsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatementItem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView TreatementItemsItemThymeleafController.editForm(@ModelAttribute TreatementItem treatementItem, Model model) {
        populateForm(model);
        
        model.addAttribute("treatementItem", treatementItem);
        return new ModelAndView("treatementitems/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatementItem
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView TreatementItemsItemThymeleafController.update(@Valid @ModelAttribute TreatementItem treatementItem, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("treatementitems/edit");
        }
        // Concurrency control
        TreatementItem existingTreatementItem = getTreatementItemService().findOne(treatementItem.getId());
        if(treatementItem.getVersion() != existingTreatementItem.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("treatementItem", treatementItem);
            model.addAttribute("concurrency", true);
            return new ModelAndView("treatementitems/edit");
        } else if(treatementItem.getVersion() != existingTreatementItem.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("treatementItem", existingTreatementItem);
            model.addAttribute("concurrency", false);
            return new ModelAndView("treatementitems/edit");
        } else if(treatementItem.getVersion() != existingTreatementItem.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            treatementItem.setVersion(existingTreatementItem.getVersion());
        }
        TreatementItem savedTreatementItem = getTreatementItemService().save(treatementItem);
        UriComponents showURI = getItemLink().to(TreatementItemsItemThymeleafLinkFactory.SHOW).with("treatementItem", savedTreatementItem.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatementItem
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> TreatementItemsItemThymeleafController.delete(@ModelAttribute TreatementItem treatementItem) {
        getTreatementItemService().delete(treatementItem);
        return ResponseEntity.ok().build();
    }
    
}
