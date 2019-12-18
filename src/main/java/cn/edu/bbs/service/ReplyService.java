package cn.edu.bbs.service;

import cn.edu.bbs.entity.ReplyEntity;
import cn.edu.bbs.dao.ReplyDao;
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
public class ReplyService {
    @Autowired
    private ReplyDao replyDao;

    public List<ReplyEntity> findAll(){
        return replyDao.findAll();
    }
    public List<ReplyEntity> findReplyEntitiesByPostId(Integer postId){
        return replyDao.findReplyEntitiesByPostId(postId);
    }
    public int countReplyEntityByPostId(Integer postId){
        return replyDao.countReplyEntityByPostId(postId);
    }
    public void deleteReplyEntitiesByPostId(Integer postId){
        replyDao.deleteReplyEntitiesByPostId(postId);
    }
    public ReplyEntity addReply(ReplyEntity replyEntity){
        return replyDao.save(replyEntity);
    }

    public Page<ReplyEntity> findReplyEntitiesByPostIdOrderByReplyId(Integer postId, Integer page, Integer size){
        Pageable pageable = PageRequest.of(page, size, Sort.Direction.ASC, "replyId");
        return replyDao.findReplyEntitiesByPostIdOrderByReplyId(postId, pageable);
    }

    public void updatePostRepliesCount(int postId){
        int replies = replyDao.countReplyEntityByPostId(postId);
        replyDao.updatePostRepliesCount(replies, postId);
    }

}
