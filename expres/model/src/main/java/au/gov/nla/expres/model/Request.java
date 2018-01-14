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
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;

/**
 * = Request
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
@RooJpaAudit
public class Request {

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
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "request")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<TreatementItem> requestItems = new HashSet<TreatementItem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String requestor;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String requestorPhone;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String requestorSection;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String event;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean charged;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String priority;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar dateCompleted;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String treatmentDays;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String completingOfficer;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar dateDispatched;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String conservationFile;

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

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @LastModifiedBy
    private String modifiedBy;
}
