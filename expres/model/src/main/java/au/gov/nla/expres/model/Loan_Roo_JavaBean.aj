// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.Contact;
import au.gov.nla.expres.model.Loan;
import au.gov.nla.expres.model.LoanItem;
import java.util.Calendar;
import java.util.Set;

privileged aspect Loan_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Loan.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Loan.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Loan.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Loan.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getLoanNo() {
        return this.loanNo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanNo
     */
    public void Loan.setLoanNo(String loanNo) {
        this.loanNo = loanNo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getHprmFileNumber() {
        return this.hprmFileNumber;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param hprmFileNumber
     */
    public void Loan.setHprmFileNumber(String hprmFileNumber) {
        this.hprmFileNumber = hprmFileNumber;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getLoanType() {
        return this.loanType;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanType
     */
    public void Loan.setLoanType(String loanType) {
        this.loanType = loanType;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getReasonForLoan() {
        return this.reasonForLoan;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reasonForLoan
     */
    public void Loan.setReasonForLoan(String reasonForLoan) {
        this.reasonForLoan = reasonForLoan;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getStartDate() {
        return this.startDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param startDate
     */
    public void Loan.setStartDate(String startDate) {
        this.startDate = startDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getEndDate() {
        return this.endDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param endDate
     */
    public void Loan.setEndDate(String endDate) {
        this.endDate = endDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getLoanFees() {
        return this.loanFees;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanFees
     */
    public void Loan.setLoanFees(String loanFees) {
        this.loanFees = loanFees;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getSfrReceived() {
        return this.sfrReceived;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sfrReceived
     */
    public void Loan.setSfrReceived(String sfrReceived) {
        this.sfrReceived = sfrReceived;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getOtherLoanInfo() {
        return this.otherLoanInfo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param otherLoanInfo
     */
    public void Loan.setOtherLoanInfo(String otherLoanInfo) {
        this.otherLoanInfo = otherLoanInfo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<LoanItem> Loan.getLoanItems() {
        return this.loanItems;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanItems
     */
    public void Loan.setLoanItems(Set<LoanItem> loanItems) {
        this.loanItems = loanItems;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Contact
     */
    public Contact Loan.getLoanContact() {
        return this.loanContact;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param loanContact
     */
    public void Loan.setLoanContact(Contact loanContact) {
        this.loanContact = loanContact;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Loan.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdDate
     */
    public void Loan.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdBy
     */
    public void Loan.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Loan.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedDate
     */
    public void Loan.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Loan.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedBy
     */
    public void Loan.setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
    
}
