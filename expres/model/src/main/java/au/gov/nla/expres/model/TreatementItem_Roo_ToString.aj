// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.TreatementItem;

privileged aspect TreatementItem_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TreatementItem.toString() {
        return "TreatementItem {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", priority='" + priority + '\'' + 
                ", status='" + status + '\'' + 
                ", requestScale='" + requestScale + '\'' + 
                ", totalTimeSpent='" + totalTimeSpent + '\'' + 
                ", atRisk='" + atRisk + '\'' + 
                ", treatmentSchedule='" + treatmentSchedule + '\'' + 
                ", nextScheduleDate='" + nextScheduleDate + '\'' + 
                ", createdDate='" + createdDate + '\'' + 
                ", createdBy='" + createdBy + '\'' + 
                ", modifiedDate='" + modifiedDate + '\'' + 
                ", modifiedBy='" + modifiedBy + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}