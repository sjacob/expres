// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.CollectionItemsCollectionThymeleafController;
import au.gov.nla.expres.application.web.CollectionItemsCollectionThymeleafLinkFactory;
import au.gov.nla.expres.application.web.CollectionItemsItemTreatmentsThymeleafController;
import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.service.api.CollectionItemService;
import au.gov.nla.expres.service.api.TreatementItemService;
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

privileged aspect CollectionItemsItemTreatmentsThymeleafController_Roo_Thymeleaf {
    
    declare @type: CollectionItemsItemTreatmentsThymeleafController: @Controller;
    
    declare @type: CollectionItemsItemTreatmentsThymeleafController: @RequestMapping(value = "/collectionitems/{collectionItem}/treatments", name = "CollectionItemsItemTreatmentsThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource CollectionItemsItemTreatmentsThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CollectionItemsCollectionThymeleafController> CollectionItemsItemTreatmentsThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService CollectionItemsItemTreatmentsThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param collectionItemService
     * @param treatementItemService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public CollectionItemsItemTreatmentsThymeleafController.new(CollectionItemService collectionItemService, TreatementItemService treatementItemService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setCollectionItemService(collectionItemService);
        setTreatementItemService(treatementItemService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(CollectionItemsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource CollectionItemsItemTreatmentsThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void CollectionItemsItemTreatmentsThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CollectionItemsCollectionThymeleafController> CollectionItemsItemTreatmentsThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void CollectionItemsItemTreatmentsThymeleafController.setCollectionLink(MethodLinkBuilderFactory<CollectionItemsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService CollectionItemsItemTreatmentsThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void CollectionItemsItemTreatmentsThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
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
    public CollectionItem CollectionItemsItemTreatmentsThymeleafController.getCollectionItem(@PathVariable("collectionItem") Long id, Locale locale, HttpMethod method) {
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
     * @param model
     */
    public void CollectionItemsItemTreatmentsThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("nextScheduleDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CollectionItemsItemTreatmentsThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<TreatementItem>> CollectionItemsItemTreatmentsThymeleafController.datatables(@ModelAttribute CollectionItem tItem, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<TreatementItem> treatments = getTreatementItemService().findByTItem(tItem, search, pageable);
        long totalTreatmentsCount = getTreatementItemService().countByTItem(tItem);
        ConvertedDatatablesData<TreatementItem> data =  new ConvertedDatatablesData<TreatementItem>(treatments, totalTreatmentsCount, draw, getConversionService(), datatablesColumns);
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
    public ResponseEntity<ConvertedDatatablesData<TreatementItem>> CollectionItemsItemTreatmentsThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<TreatementItem> treatments = getTreatementItemService().findAllByIdsIn(ids, search, pageable);
        long totalTreatmentsCount = treatments.getTotalElements();
        ConvertedDatatablesData<TreatementItem> data =  new ConvertedDatatablesData<TreatementItem>(treatments, totalTreatmentsCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView CollectionItemsItemTreatmentsThymeleafController.createForm(@ModelAttribute CollectionItem collectionItem, Model model) {
        populateForm(model);
        model.addAttribute("treatementItem", new TreatementItem());
        return new ModelAndView("collectionitems/treatments/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatmentsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromTreatments", value = "/{treatmentsToRemove}")
    @ResponseBody
    public ResponseEntity<?> CollectionItemsItemTreatmentsThymeleafController.removeFromTreatments(@ModelAttribute CollectionItem collectionItem, @PathVariable("treatmentsToRemove") Long treatmentsToRemove) {
        getCollectionItemService().removeFromTreatments(collectionItem,Collections.singleton(treatmentsToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatmentsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromTreatmentsBatch", value = "/batch/{treatmentsToRemove}")
    @ResponseBody
    public ResponseEntity<?> CollectionItemsItemTreatmentsThymeleafController.removeFromTreatmentsBatch(@ModelAttribute CollectionItem collectionItem, @PathVariable("treatmentsToRemove") Collection<Long> treatmentsToRemove) {
        getCollectionItemService().removeFromTreatments(collectionItem, treatmentsToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionItem
     * @param treatments
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView CollectionItemsItemTreatmentsThymeleafController.create(@ModelAttribute CollectionItem collectionItem, @RequestParam(value = "treatmentsIds", required = false) List<Long> treatments, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (treatments != null) {
            for (Iterator<Long> iterator = treatments.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(version != collectionItem.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (treatments != null) {
                collectionItem.setTreatments(new HashSet<TreatementItem>(getTreatementItemService().findAll(treatments)));
            }else{
                collectionItem.setTreatments(new HashSet<TreatementItem>());
            }
            // Reset the version to prevent update
             collectionItem.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("collectionItem", collectionItem);
            model.addAttribute("concurrency", true);
            return new ModelAndView("collectionitems/treatments/create");
        }else if(version != collectionItem.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("collectionItem", collectionItem);
            model.addAttribute("concurrency", false);
            return new ModelAndView("collectionitems/treatments/create");
        }
        getCollectionItemService().setTreatments(collectionItem,treatments);
        return new ModelAndView("redirect:" + getCollectionLink().to(CollectionItemsCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}