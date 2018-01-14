package au.gov.nla.expres.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;

/**
 * = CollectionItem
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
@RooJpaAudit
public class CollectionItem {

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
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "lItem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<LoanItem> loans = new HashSet<LoanItem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "tItem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<TreatementItem> treatments = new HashSet<TreatementItem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "eItem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<ExhibitionItem> exhibitions = new HashSet<ExhibitionItem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "mItem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Movement> movements = new HashSet<Movement>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "rdItem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<ResearchDocument> researchDocuments = new HashSet<ResearchDocument>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "doItem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<DigitalObject> photos = new HashSet<DigitalObject>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String bibId;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String callNumber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String copy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String archiveSpaceNumber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String specialCollectionsPapers;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String hprmNumber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String barcodeNumber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String persistentIdentifier;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String collection;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String title;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String creator;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String dateOfItem;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String itemType;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String inscription;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String originalLanguage;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String publisher;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String acquisitionDetails;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String copyrightStatus;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String researchNotes;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String itemSize;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String medium;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String descriptionPhysical;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean originalForDisplay;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean boundWithPageTurns;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String maximumHeight;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String maximumAnglePageOpening;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String displayRecommendation;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String externalFrameSize;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String internalFrameSize;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String framingOrientation;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String frameSize;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String displayRequestsForPreservation;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String mattColour;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String framingNotes;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String supportType;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String supportNotes;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String supportNumberCode;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @LastModifiedDate
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar modifiedDate;

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
}
