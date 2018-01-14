// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.model.Movement;
import au.gov.nla.expres.repository.MovementRepository;
import au.gov.nla.expres.repository.MovementRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MovementRepository_Roo_Jpa_Repository {
    
    declare parents: MovementRepository extends DetachableJpaRepository<Movement, Long>;
    
    declare parents: MovementRepository extends MovementRepositoryCustom;
    
    declare @type: MovementRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mItem
     * @return Long
     */
    public abstract long MovementRepository.countByMItem(CollectionItem mItem);
    
}
