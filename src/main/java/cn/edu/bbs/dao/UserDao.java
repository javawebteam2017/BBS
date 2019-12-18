package cn.edu.bbs.dao;

import cn.edu.bbs.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

/**
 *
 */
@Repository
public interface UserDao extends JpaRepository<UserEntity, Integer>, JpaSpecificationExecutor<UserEntity> {
    UserEntity findUserEntityByUserName(String username);
    UserEntity findUserEntityByUserId(Integer userId);

    @Modifying
    @Transactional
    void deleteUserEntityByUserId(Integer userId);

}
