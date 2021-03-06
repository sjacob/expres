// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nla.expres.repository;

import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.repository.CollectionItemRepository;
import au.gov.nla.expres.repository.CollectionItemRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CollectionItemRepository_Roo_Jpa_Repository {
    
    declare parents: CollectionItemRepository extends DetachableJpaRepository<CollectionItem, Long>;
    
    declare parents: CollectionItemRepository extends CollectionItemRepositoryCustom;
    
    declare @type: CollectionItemRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param title
     * @param pageable
     * @return Page
     */
    public abstract Page<CollectionItem> CollectionItemRepository.findByTitle(String title, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param title
     * @return Long
     */
    public abstract long CollectionItemRepository.countByTitle(String title);
    
}
