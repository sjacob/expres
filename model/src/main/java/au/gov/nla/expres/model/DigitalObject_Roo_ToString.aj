// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.model;

import au.gov.nla.expres.model.DigitalObject;

privileged aspect DigitalObject_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String DigitalObject.toString() {
        return "DigitalObject {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", caption='" + caption + '\'' + 
                ", filename='" + filename + '\'' + 
                ", format='" + format + '\'' + 
                ", photo='" + photo + '\'' + 
                ", referenceUrl='" + referenceUrl + '\'' + 
                ", createdDate='" + createdDate + '\'' + 
                ", createdBy='" + createdBy + '\'' + 
                ", modifiedDate='" + modifiedDate + '\'' + 
                ", modifiedBy='" + modifiedBy + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
