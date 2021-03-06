// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Request;
import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.model.Treatment;
import java.util.Calendar;
import java.util.Set;

privileged aspect TreatementItem_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long TreatementItem.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void TreatementItem.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer TreatementItem.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void TreatementItem.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CollectionItem
     */
    public CollectionItem TreatementItem.getTItem() {
        return this.tItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     */
    public void TreatementItem.setTItem(CollectionItem tItem) {
        this.tItem = tItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Treatment> TreatementItem.getTreatments() {
        return this.treatments;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatments
     */
    public void TreatementItem.setTreatments(Set<Treatment> treatments) {
        this.treatments = treatments;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TreatementItem.getPriority() {
        return this.priority;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param priority
     */
    public void TreatementItem.setPriority(String priority) {
        this.priority = priority;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TreatementItem.getStatus() {
        return this.status;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param status
     */
    public void TreatementItem.setStatus(String status) {
        this.status = status;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TreatementItem.getRequestScale() {
        return this.requestScale;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param requestScale
     */
    public void TreatementItem.setRequestScale(String requestScale) {
        this.requestScale = requestScale;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TreatementItem.getTotalTimeSpent() {
        return this.totalTimeSpent;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param totalTimeSpent
     */
    public void TreatementItem.setTotalTimeSpent(String totalTimeSpent) {
        this.totalTimeSpent = totalTimeSpent;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Boolean
     */
    public Boolean TreatementItem.getAtRisk() {
        return this.atRisk;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param atRisk
     */
    public void TreatementItem.setAtRisk(Boolean atRisk) {
        this.atRisk = atRisk;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Boolean
     */
    public Boolean TreatementItem.getTreatmentSchedule() {
        return this.treatmentSchedule;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param treatmentSchedule
     */
    public void TreatementItem.setTreatmentSchedule(Boolean treatmentSchedule) {
        this.treatmentSchedule = treatmentSchedule;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar TreatementItem.getNextScheduleDate() {
        return this.nextScheduleDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nextScheduleDate
     */
    public void TreatementItem.setNextScheduleDate(Calendar nextScheduleDate) {
        this.nextScheduleDate = nextScheduleDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Request
     */
    public Request TreatementItem.getRequest() {
        return this.request;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param request
     */
    public void TreatementItem.setRequest(Request request) {
        this.request = request;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar TreatementItem.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdDate
     */
    public void TreatementItem.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TreatementItem.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdBy
     */
    public void TreatementItem.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar TreatementItem.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedDate
     */
    public void TreatementItem.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TreatementItem.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedBy
     */
    public void TreatementItem.setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
    
}
