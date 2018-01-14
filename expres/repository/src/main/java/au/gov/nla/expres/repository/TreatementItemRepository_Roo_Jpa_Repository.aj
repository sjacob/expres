// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Request;
import au.gov.nla.expres.model.TreatementItem;
import au.gov.nla.expres.repository.TreatementItemRepository;
import au.gov.nla.expres.repository.TreatementItemRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TreatementItemRepository_Roo_Jpa_Repository {
    
    declare parents: TreatementItemRepository extends DetachableJpaRepository<TreatementItem, Long>;
    
    declare parents: TreatementItemRepository extends TreatementItemRepositoryCustom;
    
    declare @type: TreatementItemRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param request
     * @return Long
     */
    public abstract long TreatementItemRepository.countByRequest(Request request);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tItem
     * @return Long
     */
    public abstract long TreatementItemRepository.countByTItem(CollectionItem tItem);
    
}