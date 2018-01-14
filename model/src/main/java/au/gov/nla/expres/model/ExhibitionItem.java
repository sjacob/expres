package au.gov.nla.expres.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import io.springlets.format.EntityFormat;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;

/**
 * = ExhibitionItem
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
@RooJpaAudit
public class ExhibitionItem {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Exhibition exhibition;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String display;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String galleryPlacement;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String galleryReferenceNumber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String relatedItems;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String requestBarcodeNumber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean ecvm;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String ecvmDate;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String releasedBy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String requestedBy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String measuementForDisplay;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String treasuresGalleryIteration;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar installedOn;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar deinstalledOn;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String theme;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String story;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String captionShort;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String captionLong;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean permissionRequested;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String permissionGrantedFor;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean pinkCompleted;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean isItemDigitised;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean digitisationRequired;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String digitisationDetails;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String digitisationNotes;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String dlcJobNumber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String reproductionMedium;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String reproductionDetails;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "exhibitionItem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<PageOpening> pageOpenings = new HashSet<PageOpening>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private CollectionItem eItem;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @LastModifiedBy
    private String modifiedBy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @CreatedDate
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar createdDate;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @CreatedBy
    private String createdBy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @LastModifiedDate
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar modifiedDate;
}
