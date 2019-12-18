package cn.edu.bbs.dao;

import cn.edu.bbs.entity.PostLikedEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import javax.transaction.Transactional;

/**
 *
 */
public interface PostLikedDao extends JpaRepository<PostLikedEntity, Integer> {
    @Modifying
    @Transactional
    void deletePostLikedEntitiesByPostId(Integer postId);
}
