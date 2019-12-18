package cn.edu.bbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 */
@Controller
@RequestMapping("/error")
public class ErrorController {

    @RequestMapping("/")
    public String getErrorPath() {
        return "home";
    }


}
