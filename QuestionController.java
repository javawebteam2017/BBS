package cn.edu.ncu.jiluan.bbs.controller;

import cn.edu.ncu.jiluan.bbs.entity.PostEntity;
import cn.edu.ncu.jiluan.bbs.entity.ReplyEntity;
import cn.edu.ncu.jiluan.bbs.service.PostService;
import cn.edu.ncu.jiluan.bbs.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RequestMapping(value = "question")
public class QuestionController {

