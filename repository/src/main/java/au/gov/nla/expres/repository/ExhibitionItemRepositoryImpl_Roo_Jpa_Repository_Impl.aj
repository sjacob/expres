// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Exhibition;
import au.gov.nla.expres.model.ExhibitionItem;
import au.gov.nla.expres.model.QExhibitionItem;
import au.gov.nla.expres.repository.ExhibitionItemRepositoryCustom;
import au.gov.nla.expres.repository.ExhibitionItemRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect ExhibitionItemRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: ExhibitionItemRepositoryImpl implements ExhibitionItemRepositoryCustom;
    
    declare @type: ExhibitionItemRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.EXHIBITION = "exhibition";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.DISPLAY = "display";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.GALLERY_PLACEMENT = "galleryPlacement";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.GALLERY_REFERENCE_NUMBER = "galleryReferenceNumber";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.RELATED_ITEMS = "relatedItems";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.REQUEST_BARCODE_NUMBER = "requestBarcodeNumber";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.ECVM = "ecvm";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.ECVM_DATE = "ecvmDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.RELEASED_BY = "releasedBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.REQUESTED_BY = "requestedBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.MEASUEMENT_FOR_DISPLAY = "measuementForDisplay";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.TREASURES_GALLERY_ITERATION = "treasuresGalleryIteration";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.INSTALLED_ON = "installedOn";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.DEINSTALLED_ON = "deinstalledOn";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.THEME = "theme";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.STORY = "story";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.CAPTION_SHORT = "captionShort";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.CAPTION_LONG = "captionLong";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.PERMISSION_REQUESTED = "permissionRequested";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.PERMISSION_GRANTED_FOR = "permissionGrantedFor";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.PINK_COMPLETED = "pinkCompleted";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.IS_ITEM_DIGITISED = "isItemDigitised";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.DIGITISATION_REQUIRED = "digitisationRequired";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.DIGITISATION_DETAILS = "digitisationDetails";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.DIGITISATION_NOTES = "digitisationNotes";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.DLC_JOB_NUMBER = "dlcJobNumber";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.REPRODUCTION_MEDIUM = "reproductionMedium";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.REPRODUCTION_DETAILS = "reproductionDetails";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.E_ITEM = "eItem";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ExhibitionItemRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ExhibitionItem> ExhibitionItemRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QExhibitionItem exhibitionItem = QExhibitionItem.exhibitionItem;
        
        JPQLQuery<ExhibitionItem> query = from(exhibitionItem);
        
        Path<?>[] paths = new Path<?>[] {exhibitionItem.exhibition,exhibitionItem.display,exhibitionItem.galleryPlacement,exhibitionItem.galleryReferenceNumber,exhibitionItem.relatedItems,exhibitionItem.requestBarcodeNumber,exhibitionItem.ecvm,exhibitionItem.ecvmDate,exhibitionItem.releasedBy,exhibitionItem.requestedBy,exhibitionItem.measuementForDisplay,exhibitionItem.treasuresGalleryIteration,exhibitionItem.installedOn,exhibitionItem.deinstalledOn,exhibitionItem.theme,exhibitionItem.story,exhibitionItem.captionShort,exhibitionItem.captionLong,exhibitionItem.permissionRequested,exhibitionItem.permissionGrantedFor,exhibitionItem.pinkCompleted,exhibitionItem.isItemDigitised,exhibitionItem.digitisationRequired,exhibitionItem.digitisationDetails,exhibitionItem.digitisationNotes,exhibitionItem.dlcJobNumber,exhibitionItem.reproductionMedium,exhibitionItem.reproductionDetails,exhibitionItem.eItem,exhibitionItem.modifiedBy,exhibitionItem.createdDate,exhibitionItem.createdBy,exhibitionItem.modifiedDate};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, exhibitionItem.exhibition)
			.map(DISPLAY, exhibitionItem.display)
			.map(GALLERY_PLACEMENT, exhibitionItem.galleryPlacement)
			.map(GALLERY_REFERENCE_NUMBER, exhibitionItem.galleryReferenceNumber)
			.map(RELATED_ITEMS, exhibitionItem.relatedItems)
			.map(REQUEST_BARCODE_NUMBER, exhibitionItem.requestBarcodeNumber)
			.map(ECVM, exhibitionItem.ecvm)
			.map(ECVM_DATE, exhibitionItem.ecvmDate)
			.map(RELEASED_BY, exhibitionItem.releasedBy)
			.map(REQUESTED_BY, exhibitionItem.requestedBy)
			.map(MEASUEMENT_FOR_DISPLAY, exhibitionItem.measuementForDisplay)
			.map(TREASURES_GALLERY_ITERATION, exhibitionItem.treasuresGalleryIteration)
			.map(INSTALLED_ON, exhibitionItem.installedOn)
			.map(DEINSTALLED_ON, exhibitionItem.deinstalledOn)
			.map(THEME, exhibitionItem.theme)
			.map(STORY, exhibitionItem.story)
			.map(CAPTION_SHORT, exhibitionItem.captionShort)
			.map(CAPTION_LONG, exhibitionItem.captionLong)
			.map(PERMISSION_REQUESTED, exhibitionItem.permissionRequested)
			.map(PERMISSION_GRANTED_FOR, exhibitionItem.permissionGrantedFor)
			.map(PINK_COMPLETED, exhibitionItem.pinkCompleted)
			.map(IS_ITEM_DIGITISED, exhibitionItem.isItemDigitised)
			.map(DIGITISATION_REQUIRED, exhibitionItem.digitisationRequired)
			.map(DIGITISATION_DETAILS, exhibitionItem.digitisationDetails)
			.map(DIGITISATION_NOTES, exhibitionItem.digitisationNotes)
			.map(DLC_JOB_NUMBER, exhibitionItem.dlcJobNumber)
			.map(REPRODUCTION_MEDIUM, exhibitionItem.reproductionMedium)
			.map(REPRODUCTION_DETAILS, exhibitionItem.reproductionDetails)
			.map(E_ITEM, exhibitionItem.eItem)
			.map(MODIFIED_BY, exhibitionItem.modifiedBy)
			.map(CREATED_DATE, exhibitionItem.createdDate)
			.map(CREATED_BY, exhibitionItem.createdBy)
			.map(MODIFIED_DATE, exhibitionItem.modifiedDate);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, exhibitionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ExhibitionItem> ExhibitionItemRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QExhibitionItem exhibitionItem = QExhibitionItem.exhibitionItem;
        
        JPQLQuery<ExhibitionItem> query = from(exhibitionItem);
        
        Path<?>[] paths = new Path<?>[] {exhibitionItem.exhibition,exhibitionItem.display,exhibitionItem.galleryPlacement,exhibitionItem.galleryReferenceNumber,exhibitionItem.relatedItems,exhibitionItem.requestBarcodeNumber,exhibitionItem.ecvm,exhibitionItem.ecvmDate,exhibitionItem.releasedBy,exhibitionItem.requestedBy,exhibitionItem.measuementForDisplay,exhibitionItem.treasuresGalleryIteration,exhibitionItem.installedOn,exhibitionItem.deinstalledOn,exhibitionItem.theme,exhibitionItem.story,exhibitionItem.captionShort,exhibitionItem.captionLong,exhibitionItem.permissionRequested,exhibitionItem.permissionGrantedFor,exhibitionItem.pinkCompleted,exhibitionItem.isItemDigitised,exhibitionItem.digitisationRequired,exhibitionItem.digitisationDetails,exhibitionItem.digitisationNotes,exhibitionItem.dlcJobNumber,exhibitionItem.reproductionMedium,exhibitionItem.reproductionDetails,exhibitionItem.eItem,exhibitionItem.modifiedBy,exhibitionItem.createdDate,exhibitionItem.createdBy,exhibitionItem.modifiedDate};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(exhibitionItem.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, exhibitionItem.exhibition)
			.map(DISPLAY, exhibitionItem.display)
			.map(GALLERY_PLACEMENT, exhibitionItem.galleryPlacement)
			.map(GALLERY_REFERENCE_NUMBER, exhibitionItem.galleryReferenceNumber)
			.map(RELATED_ITEMS, exhibitionItem.relatedItems)
			.map(REQUEST_BARCODE_NUMBER, exhibitionItem.requestBarcodeNumber)
			.map(ECVM, exhibitionItem.ecvm)
			.map(ECVM_DATE, exhibitionItem.ecvmDate)
			.map(RELEASED_BY, exhibitionItem.releasedBy)
			.map(REQUESTED_BY, exhibitionItem.requestedBy)
			.map(MEASUEMENT_FOR_DISPLAY, exhibitionItem.measuementForDisplay)
			.map(TREASURES_GALLERY_ITERATION, exhibitionItem.treasuresGalleryIteration)
			.map(INSTALLED_ON, exhibitionItem.installedOn)
			.map(DEINSTALLED_ON, exhibitionItem.deinstalledOn)
			.map(THEME, exhibitionItem.theme)
			.map(STORY, exhibitionItem.story)
			.map(CAPTION_SHORT, exhibitionItem.captionShort)
			.map(CAPTION_LONG, exhibitionItem.captionLong)
			.map(PERMISSION_REQUESTED, exhibitionItem.permissionRequested)
			.map(PERMISSION_GRANTED_FOR, exhibitionItem.permissionGrantedFor)
			.map(PINK_COMPLETED, exhibitionItem.pinkCompleted)
			.map(IS_ITEM_DIGITISED, exhibitionItem.isItemDigitised)
			.map(DIGITISATION_REQUIRED, exhibitionItem.digitisationRequired)
			.map(DIGITISATION_DETAILS, exhibitionItem.digitisationDetails)
			.map(DIGITISATION_NOTES, exhibitionItem.digitisationNotes)
			.map(DLC_JOB_NUMBER, exhibitionItem.dlcJobNumber)
			.map(REPRODUCTION_MEDIUM, exhibitionItem.reproductionMedium)
			.map(REPRODUCTION_DETAILS, exhibitionItem.reproductionDetails)
			.map(E_ITEM, exhibitionItem.eItem)
			.map(MODIFIED_BY, exhibitionItem.modifiedBy)
			.map(CREATED_DATE, exhibitionItem.createdDate)
			.map(CREATED_BY, exhibitionItem.createdBy)
			.map(MODIFIED_DATE, exhibitionItem.modifiedDate);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, exhibitionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param eItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ExhibitionItem> ExhibitionItemRepositoryImpl.findByEItem(CollectionItem eItem, GlobalSearch globalSearch, Pageable pageable) {
        
        QExhibitionItem exhibitionItem = QExhibitionItem.exhibitionItem;
        
        JPQLQuery<ExhibitionItem> query = from(exhibitionItem);
        
        Assert.notNull(eItem, "eItem is required");
        
        query.where(exhibitionItem.eItem.eq(eItem));
        Path<?>[] paths = new Path<?>[] {exhibitionItem.exhibition,exhibitionItem.display,exhibitionItem.galleryPlacement,exhibitionItem.galleryReferenceNumber,exhibitionItem.relatedItems,exhibitionItem.requestBarcodeNumber,exhibitionItem.ecvm,exhibitionItem.ecvmDate,exhibitionItem.releasedBy,exhibitionItem.requestedBy,exhibitionItem.measuementForDisplay,exhibitionItem.treasuresGalleryIteration,exhibitionItem.installedOn,exhibitionItem.deinstalledOn,exhibitionItem.theme,exhibitionItem.story,exhibitionItem.captionShort,exhibitionItem.captionLong,exhibitionItem.permissionRequested,exhibitionItem.permissionGrantedFor,exhibitionItem.pinkCompleted,exhibitionItem.isItemDigitised,exhibitionItem.digitisationRequired,exhibitionItem.digitisationDetails,exhibitionItem.digitisationNotes,exhibitionItem.dlcJobNumber,exhibitionItem.reproductionMedium,exhibitionItem.reproductionDetails,exhibitionItem.eItem,exhibitionItem.modifiedBy,exhibitionItem.createdDate,exhibitionItem.createdBy,exhibitionItem.modifiedDate};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, exhibitionItem.exhibition)
			.map(DISPLAY, exhibitionItem.display)
			.map(GALLERY_PLACEMENT, exhibitionItem.galleryPlacement)
			.map(GALLERY_REFERENCE_NUMBER, exhibitionItem.galleryReferenceNumber)
			.map(RELATED_ITEMS, exhibitionItem.relatedItems)
			.map(REQUEST_BARCODE_NUMBER, exhibitionItem.requestBarcodeNumber)
			.map(ECVM, exhibitionItem.ecvm)
			.map(ECVM_DATE, exhibitionItem.ecvmDate)
			.map(RELEASED_BY, exhibitionItem.releasedBy)
			.map(REQUESTED_BY, exhibitionItem.requestedBy)
			.map(MEASUEMENT_FOR_DISPLAY, exhibitionItem.measuementForDisplay)
			.map(TREASURES_GALLERY_ITERATION, exhibitionItem.treasuresGalleryIteration)
			.map(INSTALLED_ON, exhibitionItem.installedOn)
			.map(DEINSTALLED_ON, exhibitionItem.deinstalledOn)
			.map(THEME, exhibitionItem.theme)
			.map(STORY, exhibitionItem.story)
			.map(CAPTION_SHORT, exhibitionItem.captionShort)
			.map(CAPTION_LONG, exhibitionItem.captionLong)
			.map(PERMISSION_REQUESTED, exhibitionItem.permissionRequested)
			.map(PERMISSION_GRANTED_FOR, exhibitionItem.permissionGrantedFor)
			.map(PINK_COMPLETED, exhibitionItem.pinkCompleted)
			.map(IS_ITEM_DIGITISED, exhibitionItem.isItemDigitised)
			.map(DIGITISATION_REQUIRED, exhibitionItem.digitisationRequired)
			.map(DIGITISATION_DETAILS, exhibitionItem.digitisationDetails)
			.map(DIGITISATION_NOTES, exhibitionItem.digitisationNotes)
			.map(DLC_JOB_NUMBER, exhibitionItem.dlcJobNumber)
			.map(REPRODUCTION_MEDIUM, exhibitionItem.reproductionMedium)
			.map(REPRODUCTION_DETAILS, exhibitionItem.reproductionDetails)
			.map(E_ITEM, exhibitionItem.eItem)
			.map(MODIFIED_BY, exhibitionItem.modifiedBy)
			.map(CREATED_DATE, exhibitionItem.createdDate)
			.map(CREATED_BY, exhibitionItem.createdBy)
			.map(MODIFIED_DATE, exhibitionItem.modifiedDate);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, exhibitionItem);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param exhibition
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ExhibitionItem> ExhibitionItemRepositoryImpl.findByExhibition(Exhibition exhibition, GlobalSearch globalSearch, Pageable pageable) {
        
        QExhibitionItem exhibitionItem = QExhibitionItem.exhibitionItem;
        
        JPQLQuery<ExhibitionItem> query = from(exhibitionItem);
        
        Assert.notNull(exhibition, "exhibition is required");
        
        query.where(exhibitionItem.exhibition.eq(exhibition));
        Path<?>[] paths = new Path<?>[] {exhibitionItem.exhibition,exhibitionItem.display,exhibitionItem.galleryPlacement,exhibitionItem.galleryReferenceNumber,exhibitionItem.relatedItems,exhibitionItem.requestBarcodeNumber,exhibitionItem.ecvm,exhibitionItem.ecvmDate,exhibitionItem.releasedBy,exhibitionItem.requestedBy,exhibitionItem.measuementForDisplay,exhibitionItem.treasuresGalleryIteration,exhibitionItem.installedOn,exhibitionItem.deinstalledOn,exhibitionItem.theme,exhibitionItem.story,exhibitionItem.captionShort,exhibitionItem.captionLong,exhibitionItem.permissionRequested,exhibitionItem.permissionGrantedFor,exhibitionItem.pinkCompleted,exhibitionItem.isItemDigitised,exhibitionItem.digitisationRequired,exhibitionItem.digitisationDetails,exhibitionItem.digitisationNotes,exhibitionItem.dlcJobNumber,exhibitionItem.reproductionMedium,exhibitionItem.reproductionDetails,exhibitionItem.eItem,exhibitionItem.modifiedBy,exhibitionItem.createdDate,exhibitionItem.createdBy,exhibitionItem.modifiedDate};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(EXHIBITION, exhibitionItem.exhibition)
			.map(DISPLAY, exhibitionItem.display)
			.map(GALLERY_PLACEMENT, exhibitionItem.galleryPlacement)
			.map(GALLERY_REFERENCE_NUMBER, exhibitionItem.galleryReferenceNumber)
			.map(RELATED_ITEMS, exhibitionItem.relatedItems)
			.map(REQUEST_BARCODE_NUMBER, exhibitionItem.requestBarcodeNumber)
			.map(ECVM, exhibitionItem.ecvm)
			.map(ECVM_DATE, exhibitionItem.ecvmDate)
			.map(RELEASED_BY, exhibitionItem.releasedBy)
			.map(REQUESTED_BY, exhibitionItem.requestedBy)
			.map(MEASUEMENT_FOR_DISPLAY, exhibitionItem.measuementForDisplay)
			.map(TREASURES_GALLERY_ITERATION, exhibitionItem.treasuresGalleryIteration)
			.map(INSTALLED_ON, exhibitionItem.installedOn)
			.map(DEINSTALLED_ON, exhibitionItem.deinstalledOn)
			.map(THEME, exhibitionItem.theme)
			.map(STORY, exhibitionItem.story)
			.map(CAPTION_SHORT, exhibitionItem.captionShort)
			.map(CAPTION_LONG, exhibitionItem.captionLong)
			.map(PERMISSION_REQUESTED, exhibitionItem.permissionRequested)
			.map(PERMISSION_GRANTED_FOR, exhibitionItem.permissionGrantedFor)
			.map(PINK_COMPLETED, exhibitionItem.pinkCompleted)
			.map(IS_ITEM_DIGITISED, exhibitionItem.isItemDigitised)
			.map(DIGITISATION_REQUIRED, exhibitionItem.digitisationRequired)
			.map(DIGITISATION_DETAILS, exhibitionItem.digitisationDetails)
			.map(DIGITISATION_NOTES, exhibitionItem.digitisationNotes)
			.map(DLC_JOB_NUMBER, exhibitionItem.dlcJobNumber)
			.map(REPRODUCTION_MEDIUM, exhibitionItem.reproductionMedium)
			.map(REPRODUCTION_DETAILS, exhibitionItem.reproductionDetails)
			.map(E_ITEM, exhibitionItem.eItem)
			.map(MODIFIED_BY, exhibitionItem.modifiedBy)
			.map(CREATED_DATE, exhibitionItem.createdDate)
			.map(CREATED_BY, exhibitionItem.createdBy)
			.map(MODIFIED_DATE, exhibitionItem.modifiedDate);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, exhibitionItem);
    }
    
}
