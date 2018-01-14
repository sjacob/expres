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
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotNull;
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
 * = Contact
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
@RooJpaAudit
public class Contact {

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
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "venueContact")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Venue> venues = new HashSet<Venue>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "loanContact")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Loan> loans = new HashSet<Loan>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Enumerated(EnumType.STRING)
    private ContactType type;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String title;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String firstName;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String lastName;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String address;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String suburb;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String addressState;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String country;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String postcode;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String email;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String fax;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String homePhone;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String workPhone;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String mobilePhone;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String otherPhone;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated(EnumType.STRING)
    private ContactRole contactRole;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String contactPosition;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String comments;

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
