// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.Request;

privileged aspect Request_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Request.toString() {
        return "Request {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", requestor='" + requestor + '\'' + 
                ", requestorPhone='" + requestorPhone + '\'' + 
                ", requestorSection='" + requestorSection + '\'' + 
                ", event='" + event + '\'' + 
                ", charged='" + charged + '\'' + 
                ", priority='" + priority + '\'' + 
                ", dateCompleted='" + dateCompleted + '\'' + 
                ", treatmentDays='" + treatmentDays + '\'' + 
                ", completingOfficer='" + completingOfficer + '\'' + 
                ", dateDispatched='" + dateDispatched + '\'' + 
                ", conservationFile='" + conservationFile + '\'' + 
                ", createdDate='" + createdDate + '\'' + 
                ", createdBy='" + createdBy + '\'' + 
                ", modifiedDate='" + modifiedDate + '\'' + 
                ", modifiedBy='" + modifiedBy + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
