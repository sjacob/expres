// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.VenuesCollectionThymeleafController;
import au.gov.nla.expres.application.web.VenuesItemThymeleafController;
import au.gov.nla.expres.application.web.VenuesItemThymeleafLinkFactory;
import au.gov.nla.expres.model.Venue;
import au.gov.nla.expres.service.api.VenueService;
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

privileged aspect VenuesItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: VenuesItemThymeleafController: @Controller;
    
    declare @type: VenuesItemThymeleafController: @RequestMapping(value = "/venues/{venue}", name = "VenuesItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource VenuesItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<VenuesItemThymeleafController> VenuesItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<VenuesCollectionThymeleafController> VenuesItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param venueService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public VenuesItemThymeleafController.new(VenueService venueService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setVenueService(venueService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(VenuesItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(VenuesCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource VenuesItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void VenuesItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<VenuesItemThymeleafController> VenuesItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void VenuesItemThymeleafController.setItemLink(MethodLinkBuilderFactory<VenuesItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<VenuesCollectionThymeleafController> VenuesItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void VenuesItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<VenuesCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Venue
     */
    @ModelAttribute
    public Venue VenuesItemThymeleafController.getVenue(@PathVariable("venue") Long id, Locale locale, HttpMethod method) {
        Venue venue = null;
        if (HttpMethod.PUT.equals(method)) {
            venue = venueService.findOneForUpdate(id);
        } else {
            venue = venueService.findOne(id);
        }
        
        if (venue == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Venue", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return venue;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView VenuesItemThymeleafController.show(@ModelAttribute Venue venue, Model model) {
        model.addAttribute("venue", venue);
        return new ModelAndView("venues/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView VenuesItemThymeleafController.showInline(@ModelAttribute Venue venue, Model model) {
        model.addAttribute("venue", venue);
        return new ModelAndView("venues/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("venue")
    public void VenuesItemThymeleafController.initVenueBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void VenuesItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("startDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("endDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void VenuesItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView VenuesItemThymeleafController.editForm(@ModelAttribute Venue venue, Model model) {
        populateForm(model);
        
        model.addAttribute("venue", venue);
        return new ModelAndView("venues/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView VenuesItemThymeleafController.update(@Valid @ModelAttribute Venue venue, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("venues/edit");
        }
        // Concurrency control
        Venue existingVenue = getVenueService().findOne(venue.getId());
        if(venue.getVersion() != existingVenue.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("venue", venue);
            model.addAttribute("concurrency", true);
            return new ModelAndView("venues/edit");
        } else if(venue.getVersion() != existingVenue.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("venue", existingVenue);
            model.addAttribute("concurrency", false);
            return new ModelAndView("venues/edit");
        } else if(venue.getVersion() != existingVenue.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            venue.setVersion(existingVenue.getVersion());
        }
        Venue savedVenue = getVenueService().save(venue);
        UriComponents showURI = getItemLink().to(VenuesItemThymeleafLinkFactory.SHOW).with("venue", savedVenue.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venue
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> VenuesItemThymeleafController.delete(@ModelAttribute Venue venue) {
        getVenueService().delete(venue);
        return ResponseEntity.ok().build();
    }
    
}
