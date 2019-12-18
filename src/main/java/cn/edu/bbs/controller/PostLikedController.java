package cn.edu.bbs.controller;

import cn.edu.bbs.entity.PostLikedEntity;
import cn.edu.bbs.service.PostLikedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 *
 */
@Controller
@RequestMapping(value = "postLiked")
public class PostLikedController {
    @Autowired
    private PostLikedService service;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public List<PostLikedEntity> findAll(){
        return service.findAll();
    }
}
