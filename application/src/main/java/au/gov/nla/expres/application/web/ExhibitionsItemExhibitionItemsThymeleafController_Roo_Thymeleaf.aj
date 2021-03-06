// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.ExhibitionsCollectionThymeleafController;
import au.gov.nla.expres.application.web.ExhibitionsCollectionThymeleafLinkFactory;
import au.gov.nla.expres.application.web.ExhibitionsItemExhibitionItemsThymeleafController;
import au.gov.nla.expres.model.Exhibition;
import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.service.api.ExhibitionItemService;
import au.gov.nla.expres.service.api.ExhibitionService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

privileged aspect ExhibitionsItemExhibitionItemsThymeleafController_Roo_Thymeleaf {
    
    declare @type: ExhibitionsItemExhibitionItemsThymeleafController: @Controller;
    
    declare @type: ExhibitionsItemExhibitionItemsThymeleafController: @RequestMapping(value = "/exhibitions/{exhibition}/exhibitionItems", name = "ExhibitionsItemExhibitionItemsThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ExhibitionsItemExhibitionItemsThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ExhibitionsCollectionThymeleafController> ExhibitionsItemExhibitionItemsThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService ExhibitionsItemExhibitionItemsThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param exhibitionService
     * @param exhibitionItemService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ExhibitionsItemExhibitionItemsThymeleafController.new(ExhibitionService exhibitionService, ExhibitionItemService exhibitionItemService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setExhibitionService(exhibitionService);
        setExhibitionItemService(exhibitionItemService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(ExhibitionsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ExhibitionsItemExhibitionItemsThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ExhibitionsItemExhibitionItemsThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ExhibitionsCollectionThymeleafController> ExhibitionsItemExhibitionItemsThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ExhibitionsItemExhibitionItemsThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ExhibitionsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ExhibitionsItemExhibitionItemsThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ExhibitionsItemExhibitionItemsThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Exhibition
     */
    @ModelAttribute
    public Exhibition ExhibitionsItemExhibitionItemsThymeleafController.getExhibition(@PathVariable("exhibition") Long id, Locale locale, HttpMethod method) {
        Exhibition exhibition = null;
        if (HttpMethod.PUT.equals(method)) {
            exhibition = exhibitionService.findOneForUpdate(id);
        } else {
            exhibition = exhibitionService.findOne(id);
        }
        
        if (exhibition == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Exhibition", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return exhibition;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ExhibitionsItemExhibitionItemsThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("installedOn_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("deinstalledOn_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ExhibitionsItemExhibitionItemsThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<ExhibitionItem>> ExhibitionsItemExhibitionItemsThymeleafController.datatables(@ModelAttribute Exhibition exhibition, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<ExhibitionItem> exhibitionItems = getExhibitionItemService().findByExhibition(exhibition, search, pageable);
        long totalExhibitionItemsCount = getExhibitionItemService().countByExhibition(exhibition);
        ConvertedDatatablesData<ExhibitionItem> data =  new ConvertedDatatablesData<ExhibitionItem>(exhibitionItems, totalExhibitionItemsCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatablesByIdsIn", produces = Datatables.MEDIA_TYPE, value = "/dtByIdsIn")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<ExhibitionItem>> ExhibitionsItemExhibitionItemsThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<ExhibitionItem> exhibitionItems = getExhibitionItemService().findAllByIdsIn(ids, search, pageable);
        long totalExhibitionItemsCount = exhibitionItems.getTotalElements();
        ConvertedDatatablesData<ExhibitionItem> data =  new ConvertedDatatablesData<ExhibitionItem>(exhibitionItems, totalExhibitionItemsCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView ExhibitionsItemExhibitionItemsThymeleafController.createForm(@ModelAttribute Exhibition exhibition, Model model) {
        populateForm(model);
        model.addAttribute("exhibitionItem", new ExhibitionItem());
        return new ModelAndView("exhibitions/exhibitionItems/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param exhibitionItemsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromExhibitionItems", value = "/{exhibitionItemsToRemove}")
    @ResponseBody
    public ResponseEntity<?> ExhibitionsItemExhibitionItemsThymeleafController.removeFromExhibitionItems(@ModelAttribute Exhibition exhibition, @PathVariable("exhibitionItemsToRemove") Long exhibitionItemsToRemove) {
        getExhibitionService().removeFromExhibitionItems(exhibition,Collections.singleton(exhibitionItemsToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param exhibitionItemsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromExhibitionItemsBatch", value = "/batch/{exhibitionItemsToRemove}")
    @ResponseBody
    public ResponseEntity<?> ExhibitionsItemExhibitionItemsThymeleafController.removeFromExhibitionItemsBatch(@ModelAttribute Exhibition exhibition, @PathVariable("exhibitionItemsToRemove") Collection<Long> exhibitionItemsToRemove) {
        getExhibitionService().removeFromExhibitionItems(exhibition, exhibitionItemsToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param exhibitionItems
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView ExhibitionsItemExhibitionItemsThymeleafController.create(@ModelAttribute Exhibition exhibition, @RequestParam(value = "exhibitionItemsIds", required = false) List<Long> exhibitionItems, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (exhibitionItems != null) {
            for (Iterator<Long> iterator = exhibitionItems.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(version != exhibition.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (exhibitionItems != null) {
                exhibition.setExhibitionItems(new HashSet<ExhibitionItem>(getExhibitionItemService().findAll(exhibitionItems)));
            }else{
                exhibition.setExhibitionItems(new HashSet<ExhibitionItem>());
            }
            // Reset the version to prevent update
             exhibition.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("exhibition", exhibition);
            model.addAttribute("concurrency", true);
            return new ModelAndView("exhibitions/exhibitionItems/create");
        }else if(version != exhibition.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("exhibition", exhibition);
            model.addAttribute("concurrency", false);
            return new ModelAndView("exhibitions/exhibitionItems/create");
        }
        getExhibitionService().setExhibitionItems(exhibition,exhibitionItems);
        return new ModelAndView("redirect:" + getCollectionLink().to(ExhibitionsCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
