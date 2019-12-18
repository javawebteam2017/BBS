package cn.edu.bbs.service;

import cn.edu.bbs.dao.PostLikedDao;
import cn.edu.bbs.entity.PostLikedEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service
public class PostLikedService {
    @Autowired
    private PostLikedDao postLikedDao;

    public List<PostLikedEntity> findAll(){
        return postLikedDao.findAll();
    }

    public void deleteReplyEntitiesByPostId(Integer postId){
        postLikedDao.deletePostLikedEntitiesByPostId(postId);
    }
}
