package cn.edu.ncu.jiluan.bbs.controller;

import cn.edu.ncu.jiluan.bbs.entity.UserEntity;
import cn.edu.ncu.jiluan.bbs.service.PlateService;
import cn.edu.ncu.jiluan.bbs.service.PostService;
import cn.edu.ncu.jiluan.bbs.service.UserService;
.Mod
import java.util.ArrayList;

@RequestMapping(value = "")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private PlateService plateService;

    @Autowired
    private PostService postService;

    @Autowired
    private ProvinceService provinceService;



    @RequestMapping(value = "userInfo/{userId}",method = RequestMethod.GET)
    public String findUserEntityByUserId(Model model, @PathVariable Integer userId){
        model.addAttribute("user", userService.findUserEntityByUserId(userId));
        model.addAttribute("plates",plateService.findAll());
        model.addAttribute("posts",postService.findAll());
        return "userInfo";
    }

    @RequestMapping(value = "/userMgr/{page}",method = RequestMethod.GET)
    public String findAll(Model model, @PathVariable Integer page){
        model.addAttribute("indexPage", page);
        Long temp = userService.count();
        if (temp%20==0)
            temp/=20;
        else
            temp=temp/20+1;
        model.addAttribute("totalPage", temp);
        Page<UserEntity> userEntities = userService.findAllPagedOrderById(page, 10);
        model.addAttribute("page",userEntities);
        return "userMgr";
    }

    @RequestMapping(value = "/userDel/{userId}",method = RequestMethod.GET)
    public String deleteUserEntityByUserId(@PathVariable Integer userId){
        userService.deleteUserEntityByUserId(userId);
        return "userMgr";
    }

    @RequestMapping(value = "/toEditUser/{userId}", method = RequestMethod.GET)
    public String toEditUser(Model model, @PathVariable Integer userId){
        model.addAttribute("user", userService.findUserEntityByUserId(userId));
        model.addAttribute("provinceList",provinceService.findAll());
        model.addAttribute("plateList",plateService.findAll());
        return "userEdit";
    }

    @RequestMapping(value = "/editUser",method = RequestMethod.POST)
    public String editUser(UserEntity userEntity){
        userService.editUser(userEntity);
        return "redirect:/";
    }


}
