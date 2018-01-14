// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.CollectionItemsCollectionThymeleafController;
import au.gov.nla.expres.application.web.CollectionItemsItemThymeleafController;
import au.gov.nla.expres.application.web.CollectionItemsItemThymeleafLinkFactory;
import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.service.api.CollectionItemService;
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

privileged aspect CollectionItemsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: CollectionItemsItemThymeleafController: @Controller;
    
    declare @type: CollectionItemsItemThymeleafController: @RequestMapping(value = "/collectionitems/{collectionItem}", name = "CollectionItemsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource CollectionItemsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CollectionItemsItemThymeleafController> CollectionItemsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CollectionItemsCollectionThymeleafController> CollectionItemsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param collectionItemService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public CollectionItemsItemThymeleafController.new(CollectionItemService collectionItemService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setCollectionItemService(collectionItemService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(CollectionItemsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(CollectionItemsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource CollectionItemsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void CollectionItemsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CollectionItemsItemThymeleafController> CollectionItemsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void CollectionItemsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<CollectionItemsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CollectionItemsCollectionThymeleafController> CollectionItemsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void CollectionItemsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<CollectionItemsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return CollectionItem
     */
    @ModelAttribute
    public CollectionItem CollectionItemsItemThymeleafController.getCollectionItem(@PathVariable("collectionItem") Long id, Locale locale, HttpMethod method) {
        CollectionItem collectionItem = null;
        if (HttpMethod.PUT.equals(method)) {
            collectionItem = collectionItemService.findOneForUpdate(id);
        } else {
            collectionItem = collectionItemService.findOne(id);
        }
        
        if (collectionItem == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"CollectionItem", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return collectionItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView CollectionItemsItemThymeleafController.show(@ModelAttribute CollectionItem collectionItem, Model model) {
        model.addAttribute("collectionItem", collectionItem);
        return new ModelAndView("collectionitems/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView CollectionItemsItemThymeleafController.showInline(@ModelAttribute CollectionItem collectionItem, Model model) {
        model.addAttribute("collectionItem", collectionItem);
        return new ModelAndView("collectionitems/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("collectionItem")
    public void CollectionItemsItemThymeleafController.initCollectionItemBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CollectionItemsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CollectionItemsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView CollectionItemsItemThymeleafController.editForm(@ModelAttribute CollectionItem collectionItem, Model model) {
        populateForm(model);
        
        model.addAttribute("collectionItem", collectionItem);
        return new ModelAndView("collectionitems/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView CollectionItemsItemThymeleafController.update(@Valid @ModelAttribute CollectionItem collectionItem, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("collectionitems/edit");
        }
        // Concurrency control
        CollectionItem existingCollectionItem = getCollectionItemService().findOne(collectionItem.getId());
        if(collectionItem.getVersion() != existingCollectionItem.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("collectionItem", collectionItem);
            model.addAttribute("concurrency", true);
            return new ModelAndView("collectionitems/edit");
        } else if(collectionItem.getVersion() != existingCollectionItem.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("collectionItem", existingCollectionItem);
            model.addAttribute("concurrency", false);
            return new ModelAndView("collectionitems/edit");
        } else if(collectionItem.getVersion() != existingCollectionItem.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            collectionItem.setVersion(existingCollectionItem.getVersion());
        }
        CollectionItem savedCollectionItem = getCollectionItemService().save(collectionItem);
        UriComponents showURI = getItemLink().to(CollectionItemsItemThymeleafLinkFactory.SHOW).with("collectionItem", savedCollectionItem.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CollectionItemsItemThymeleafController.delete(@ModelAttribute CollectionItem collectionItem) {
        getCollectionItemService().delete(collectionItem);
        return ResponseEntity.ok().build();
    }
    
}