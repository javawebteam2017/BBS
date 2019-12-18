package cn.edu.bbs.controller;

import cn.edu.bbs.service.PlateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewDataController {
    @Autowired
    private PlateService plateService;

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String viewPlatePost(Model model){
        model.addAttribute("plateList",plateService.findAll());
        model.addAttribute("plateInfoList",plateService.getPlateAyalysisInfoList());
        return "dataAnalysis";
    }
}
