package cn.edu.bbs.service;

import cn.edu.bbs.entity.UserEntity;
import cn.edu.bbs.dao.FriendDao;
import cn.edu.bbs.dao.UserDao;
import cn.edu.bbs.entity.FriendEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    @Autowired
    private FriendDao friendDao;

    public List<UserEntity> findAll() {
        return userDao.findAll();
    }

    public UserEntity findUserEntityByUserId(Integer userId) {
        return userDao.findUserEntityByUserId(userId);
    }

    public UserEntity findUserEntityByUserName(String username) {
        return userDao.findUserEntityByUserName(username);
    }

    public void deleteUserEntityByUserId(Integer userId) {
        userDao.deleteUserEntityByUserId(userId);
    }

    public Page<UserEntity> findAllPagedOrderById(Integer page, Integer size) {
        Pageable pageable = PageRequest.of(page, size, Sort.DEFAULT_DIRECTION, "userId");
        return userDao.findAll(pageable);
    }

    public Page<FriendEntity> findAllFriendsPagedOrderById(Integer userId, Integer page, Integer size) {
        Pageable pageable = PageRequest.of(page, size, Sort.DEFAULT_DIRECTION, "userId");
        return friendDao.findAllByUserId(userId, pageable);
    }

    public Long count() {
        return userDao.count();
    }


    public UserEntity saveUser(UserEntity userEntity) {
        return userDao.save(userEntity);
    }

    public UserEntity editUser(UserEntity userEntity) {
        return userDao.save(userEntity);
    }

    public int login(String userName, String password) {
        UserEntity user = findUserEntityByUserName(userName);
        if (user == null) {
            return 1;
        } else {
            if (user.getPassword().equals(password)) {
                return 0;
            } else return -1;
        }
    }
}
