package cn.edu.bbs.controller;

import cn.edu.bbs.service.PostService;
import cn.edu.bbs.service.PlateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MainController {
    @Autowired
    private PlateService plateService;

    @Autowired
    private PostService postService;

    @RequestMapping("/")
    public String viewPlate(@RequestParam(value = "search", required = false) String search, HttpServletRequest request, Model model) {
        System.out.println(search);
        HttpSession session = request.getSession();
        model.addAttribute("search", search);
        return "home";
    }

    @RequestMapping("/plate")
    public String getPlates(Model model) {
        model.addAttribute("plateList", plateService.findAll());
        return "fragments/plates";
    }

    @RequestMapping("/questions")
    public String getQuestions(Model model) {
        model.addAttribute("quesList", postService.findPostEntitiesByIspost(Byte.valueOf("1")));
        return "fragments/question";
    }

    @RequestMapping("adminPage")
    public String viewPlate_Mgr(Model model) {
        model.addAttribute("postList", postService.findAll());
        model.addAttribute("plateList", plateService.findAll());
        return "adminPage";
    }
}
