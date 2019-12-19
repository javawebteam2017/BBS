
import java.sql.Timestamp;

/**
 *
 */
@Controller
public class PostController {
    @Autowired
    private PostService postService;
    @Autowired
    private PlateService plateService;
    @Autowired
    private ReplyService replyService;
    @Autowired
    private PostLikedService postLikedService;


    @RequestMapping(value = "/postList", method = RequestMethod.GET)
    public String findAll(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        model.addAttribute("postList", postService.findAll());
        model.addAttribute("plateList", plateService.findAll());
        session.removeAttribute("toPick");
        session.removeAttribute("toGood");
        session.removeAttribute("delFlag");
        return "home";
    }

    @RequestMapping(value = "/postDel/{postId}", method = RequestMethod.GET)
    public String deletePostEntityByPostId2(@PathVariable Integer postId, HttpServletRequest request) {
        replyService.deleteReplyEntitiesByPostId(postId);
        postLikedService.deleteReplyEntitiesByPostId(postId);
        postService.deletePostEntityByPostId(postId);
        HttpSession session = request.getSession();
        session.removeAttribute("toPick");
        session.removeAttribute("toGood");
        session.setAttribute("delFlag", 1);
        return "redirect:/";
    }

    @RequestMapping(value = "/addNewPost", method = RequestMethod.GET)
    public String getPlate(Model model) {
        model.addAttribute("plateList", plateService.findAll());
        model.addAttribute("post", new PostEntity());
        return "postAdd";
    }

    @RequestMapping(value = "/editor")
    public String editor(Model model) {
        return "fragments/editor";
    }

    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
    public String postAdd(@Valid PostEntity postEntity, HttpServletRequest request) {
        HttpSession session = request.getSession();
        postEntity.setUserId((Integer) session.getAttribute("userId"));
        postEntity.setIspost(Byte.valueOf("0"));
        postEntity.setPostTime(new Timestamp(System.currentTimeMillis()));
        postService.addPost(postEntity);
        return "redirect:/postList";
    }

    @RequestMapping(value = "/toEditPost/{postId}", method = RequestMethod.GET)
    public String toEditPost(Model model, @PathVariable Integer postId) {
        PostEntity postEntity = postService.findPostEntityByPostId(postId, Byte.valueOf("0"));
        model.addAttribute("post", postEntity);
        return "postEdit";
    }

    @RequestMapping(value = "/editPost", method = RequestMethod.POST)
    public String editPost(PostEntity postEntity, HttpServletRequest request) {
        HttpSession session = request.getSession();
        postService.editPost(postEntity);
        return "redirect:/postList";
    }

    @RequestMapping(value = "/toPick/{postId}")
    public String toPick(@PathVariable Integer postId, HttpServletRequest request) {
        postService.editPicked(postId, false);
        HttpSession session = request.getSession();
        session.setAttribute("toPick", 1);
        session.removeAttribute("toGood");
        session.removeAttribute("delFlag");
        return "redirect:/";
    }

    @RequestMapping(value = "/noPick/{postId}")
    public String noPick(@PathVariable Integer postId, HttpServletRequest request) {
        postService.editPicked(postId, true);
        HttpSession session = request.getSession();
        session.setAttribute("toPick", 0);
        session.removeAttribute("toGood");
        session.removeAttribute("delFlag");
        return "redirect:/";
    }

    @RequestMapping(value = "/toGood/{postId}")
    public String toGood(@PathVariable Integer postId, HttpServletRequest request) {
        postService.editGood(postId, false);
        HttpSession session = request.getSession();
        session.setAttribute("toGood", 1);
        session.removeAttribute("toPick");
        session.removeAttribute("delFlag");
        return "redirect:/";
    }

    @RequestMapping(value = "/noGood/{postId}")
    public String noGood(@PathVariable Integer postId, HttpServletRequest request) {
        postService.editGood(postId, true);
        HttpSession session = request.getSession();
        session.setAttribute("toGood", 0);
        session.removeAttribute("toPick");
        session.removeAttribute("delFlag");
        return "redirect:/";
    }

    @RequestMapping(value = "/first")
    public String firstPlate(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("toPick");
        session.removeAttribute("toGood");
        session.removeAttribute("delFlag");
        System.out.println("\n\n\n\n\nje");
        return "redirect:/";
    }

}
