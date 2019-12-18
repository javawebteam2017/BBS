package cn.edu.bbs.controller;

import cn.edu.bbs.service.PostService;
import cn.edu.bbs.service.PlateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PlateController {
    @Autowired
    private PlateService plateService;

    @Autowired
    private PostService postService;

    @RequestMapping(value = "/plate/{plateId}/{page}", method = RequestMethod.GET)
    public String findPostEntitiesByPlateId(@PathVariable Integer plateId, @RequestParam(value = "search", required = false) String search,
                                            @PathVariable Integer page, Model model) {
        if (!StringUtils.isEmpty(search)) {
            model.addAttribute("postList", postService.findAllByPostTopic(search, page, 10));
        } else {
            model.addAttribute("postList", postService.findAllByPlateIdOrderByIsPickedDesc(plateId, page, 10));
        }
        model.addAttribute("plateList", plateService.findAll());
        model.addAttribute("plate", plateService.findPlateEntityByPlateId(plateId));
        return "fragments/plateInfo";
    }
}
