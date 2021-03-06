// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.application.web;

import au.gov.nla.expres.application.web.LoansCollectionThymeleafController;
import au.gov.nla.expres.application.web.LoansCollectionThymeleafLinkFactory;
import au.gov.nla.expres.application.web.LoansItemLoanItemsThymeleafController;
import au.gov.nla.expres.model.Loan;
import au.gov.nla.expres.model.LoanItem;
import au.gov.nla.expres.service.api.LoanItemService;
import au.gov.nla.expres.service.api.LoanService;
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

privileged aspect LoansItemLoanItemsThymeleafController_Roo_Thymeleaf {
    
    declare @type: LoansItemLoanItemsThymeleafController: @Controller;
    
    declare @type: LoansItemLoanItemsThymeleafController: @RequestMapping(value = "/loans/{loan}/loanItems", name = "LoansItemLoanItemsThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource LoansItemLoanItemsThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<LoansCollectionThymeleafController> LoansItemLoanItemsThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService LoansItemLoanItemsThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param loanService
     * @param loanItemService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public LoansItemLoanItemsThymeleafController.new(LoanService loanService, LoanItemService loanItemService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setLoanService(loanService);
        setLoanItemService(loanItemService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(LoansCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource LoansItemLoanItemsThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void LoansItemLoanItemsThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<LoansCollectionThymeleafController> LoansItemLoanItemsThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void LoansItemLoanItemsThymeleafController.setCollectionLink(MethodLinkBuilderFactory<LoansCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService LoansItemLoanItemsThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void LoansItemLoanItemsThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Loan
     */
    @ModelAttribute
    public Loan LoansItemLoanItemsThymeleafController.getLoan(@PathVariable("loan") Long id, Locale locale, HttpMethod method) {
        Loan loan = null;
        if (HttpMethod.PUT.equals(method)) {
            loan = loanService.findOneForUpdate(id);
        } else {
            loan = loanService.findOne(id);
        }
        
        if (loan == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Loan", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return loan;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void LoansItemLoanItemsThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void LoansItemLoanItemsThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<LoanItem>> LoansItemLoanItemsThymeleafController.datatables(@ModelAttribute Loan loan, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<LoanItem> loanItems = getLoanItemService().findByLoan(loan, search, pageable);
        long totalLoanItemsCount = getLoanItemService().countByLoan(loan);
        ConvertedDatatablesData<LoanItem> data =  new ConvertedDatatablesData<LoanItem>(loanItems, totalLoanItemsCount, draw, getConversionService(), datatablesColumns);
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
    public ResponseEntity<ConvertedDatatablesData<LoanItem>> LoansItemLoanItemsThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<LoanItem> loanItems = getLoanItemService().findAllByIdsIn(ids, search, pageable);
        long totalLoanItemsCount = loanItems.getTotalElements();
        ConvertedDatatablesData<LoanItem> data =  new ConvertedDatatablesData<LoanItem>(loanItems, totalLoanItemsCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView LoansItemLoanItemsThymeleafController.createForm(@ModelAttribute Loan loan, Model model) {
        populateForm(model);
        model.addAttribute("loanItem", new LoanItem());
        return new ModelAndView("loans/loanItems/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param loanItemsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromLoanItems", value = "/{loanItemsToRemove}")
    @ResponseBody
    public ResponseEntity<?> LoansItemLoanItemsThymeleafController.removeFromLoanItems(@ModelAttribute Loan loan, @PathVariable("loanItemsToRemove") Long loanItemsToRemove) {
        getLoanService().removeFromLoanItems(loan,Collections.singleton(loanItemsToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param loanItemsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromLoanItemsBatch", value = "/batch/{loanItemsToRemove}")
    @ResponseBody
    public ResponseEntity<?> LoansItemLoanItemsThymeleafController.removeFromLoanItemsBatch(@ModelAttribute Loan loan, @PathVariable("loanItemsToRemove") Collection<Long> loanItemsToRemove) {
        getLoanService().removeFromLoanItems(loan, loanItemsToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loan
     * @param loanItems
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView LoansItemLoanItemsThymeleafController.create(@ModelAttribute Loan loan, @RequestParam(value = "loanItemsIds", required = false) List<Long> loanItems, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (loanItems != null) {
            for (Iterator<Long> iterator = loanItems.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(version != loan.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (loanItems != null) {
                loan.setLoanItems(new HashSet<LoanItem>(getLoanItemService().findAll(loanItems)));
            }else{
                loan.setLoanItems(new HashSet<LoanItem>());
            }
            // Reset the version to prevent update
             loan.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("loan", loan);
            model.addAttribute("concurrency", true);
            return new ModelAndView("loans/loanItems/create");
        }else if(version != loan.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("loan", loan);
            model.addAttribute("concurrency", false);
            return new ModelAndView("loans/loanItems/create");
        }
        getLoanService().setLoanItems(loan,loanItems);
        return new ModelAndView("redirect:" + getCollectionLink().to(LoansCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
