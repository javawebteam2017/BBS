package cn.edu.bbs.dao;

import cn.edu.bbs.entity.FriendEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 *
 */
public interface FriendDao extends JpaRepository<FriendEntity, Integer>, JpaSpecificationExecutor<FriendEntity> {

    List<FriendEntity> findAllByUserId(Integer userId);

    Page<FriendEntity> findAllByUserId(Integer userId, Pageable pageable);


    long countByUserIdAndFriendId(Integer userId, Integer friendId);
}
