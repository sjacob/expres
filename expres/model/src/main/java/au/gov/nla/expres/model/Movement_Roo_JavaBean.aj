// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Movement;
import java.util.Calendar;

privileged aspect Movement_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Movement.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Movement.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Movement.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Movement.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CollectionItem
     */
    public CollectionItem Movement.getMItem() {
        return this.mItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mItem
     */
    public void Movement.setMItem(CollectionItem mItem) {
        this.mItem = mItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getPermanentLocation() {
        return this.permanentLocation;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param permanentLocation
     */
    public void Movement.setPermanentLocation(String permanentLocation) {
        this.permanentLocation = permanentLocation;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getCurrentLocation() {
        return this.currentLocation;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param currentLocation
     */
    public void Movement.setCurrentLocation(String currentLocation) {
        this.currentLocation = currentLocation;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getLocationNotes() {
        return this.locationNotes;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param locationNotes
     */
    public void Movement.setLocationNotes(String locationNotes) {
        this.locationNotes = locationNotes;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getMovementNotes() {
        return this.movementNotes;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param movementNotes
     */
    public void Movement.setMovementNotes(String movementNotes) {
        this.movementNotes = movementNotes;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getBarcode() {
        return this.barcode;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param barcode
     */
    public void Movement.setBarcode(String barcode) {
        this.barcode = barcode;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getRequestNumberBarcode() {
        return this.requestNumberBarcode;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param requestNumberBarcode
     */
    public void Movement.setRequestNumberBarcode(String requestNumberBarcode) {
        this.requestNumberBarcode = requestNumberBarcode;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getBarcodeValidation() {
        return this.barcodeValidation;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param barcodeValidation
     */
    public void Movement.setBarcodeValidation(String barcodeValidation) {
        this.barcodeValidation = barcodeValidation;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Movement.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdDate
     */
    public void Movement.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdBy
     */
    public void Movement.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Movement.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedDate
     */
    public void Movement.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Movement.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedBy
     */
    public void Movement.setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
    
}