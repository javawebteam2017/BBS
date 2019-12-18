package cn.edu.bbs.controller;

import cn.edu.bbs.entity.UserEntity;
import cn.edu.bbs.service.PostService;
import cn.edu.bbs.dao.FriendDao;
import cn.edu.bbs.dao.UserDao;
import cn.edu.bbs.entity.FriendEntity;
import cn.edu.bbs.service.PlateService;
import cn.edu.bbs.service.ProvinceService;
import cn.edu.bbs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 */
@Controller
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
    @Autowired
    private UserDao userDao;
    @Autowired
    private FriendDao friendDao;


    @RequestMapping(value = "userInfo/{userId}", method = RequestMethod.GET)
    public String findUserEntityByUserId(Model model, @PathVariable Integer userId) {
        model.addAttribute("user", userService.findUserEntityByUserId(userId));
        model.addAttribute("plates", plateService.findAll());
        model.addAttribute("posts", postService.findAll());
        return "userInfo";
    }

    @RequestMapping(value = "/userMgr/{page}", method = RequestMethod.GET)
    public String findAll(Model model, @PathVariable Integer page) {
        model.addAttribute("indexPage", page);
        Long temp = userService.count();
        if (temp % 20 == 0)
            temp /= 20;
        else
            temp = temp / 20 + 1;
        model.addAttribute("totalPage", temp);
        Page<UserEntity> userEntities = userService.findAllPagedOrderById(page, 10);
        model.addAttribute("page", userEntities);
        return "userMgr";
    }

    @RequestMapping(value = "/friendMgr/{page}", method = RequestMethod.GET)
    public String friendMgr(Model model, @PathVariable Integer page, HttpServletRequest request) {
        HttpSession session = request.getSession();
        model.addAttribute("indexPage", page);
        Long temp = userService.count();
        if (temp % 20 == 0)
            temp /= 20;
        else
            temp = temp / 20 + 1;
        System.out.println(request.getAttribute("status"));
        model.addAttribute("status", request.getParameter("status"));
        model.addAttribute("totalPage", temp);
        Page<FriendEntity> friendEntities = userService.findAllFriendsPagedOrderById((Integer) session.getAttribute("userId"), page, 10);
        model.addAttribute("page", friendEntities.map(FriendEntity::getUserByFriendId));
        return "friendMgr";
    }

    @RequestMapping(value = "/userDel/{userId}", method = RequestMethod.GET)
    public String deleteUserEntityByUserId(@PathVariable Integer userId) {
        userService.deleteUserEntityByUserId(userId);
        return "userMgr";
    }

    @RequestMapping(value = "/toEditUser/{userId}", method = RequestMethod.GET)
    public String toEditUser(Model model, @PathVariable Integer userId) {
        model.addAttribute("user", userService.findUserEntityByUserId(userId));
        model.addAttribute("provinceList", provinceService.findAll());
        model.addAttribute("plateList", plateService.findAll());
        return "userEdit";
    }

    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String editUser(UserEntity userEntity) {
        userService.editUser(userEntity);
        return "redirect:/";
    }

    @RequestMapping(value = "/addFriend", method = RequestMethod.GET)
    public String addFriend(Model model, @RequestParam("friend") String friend, HttpServletRequest request) {
        UserEntity userEntity = userDao.findUserEntityByUserName(friend);
        int status = 0;
        if (userEntity == null) {
        } else if (userEntity.getUserId() == (Integer) request.getSession().getAttribute("userId")) {
            status = 1;
        } else if (friendDao.countByUserIdAndFriendId((Integer) request.getSession().getAttribute("userId"), userEntity.getUserId()) > 0) {
            status = 2;
        } else {
            FriendEntity entity = new FriendEntity();
            entity.setUserId((Integer) request.getSession().getAttribute("userId"));
            entity.setFriendId(userEntity.getUserId());
            friendDao.save(entity);
            status = 3;
        }
        return "redirect:/friendMgr/0?status=" + status;
    }

}
