package kr.co.maple.user.web;
import kr.co.maple.user.service.UserService;
import kr.co.maple.user.vo.AbilityVo;
import kr.co.maple.user.vo.UserVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;



@Controller
public class UserController {

   @Resource(name = "userService")
    UserService service;

    @RequestMapping(value = "/loginPage.do", method={RequestMethod.GET})
    public String loginPage() {

         return "/user/login";
    }

    @RequestMapping(value = "/crudPage.do", method=RequestMethod.GET)
    public String crudPage() {

        return "/user/crud";
    }

    @RequestMapping(value = "/gridPage.do", method=RequestMethod.GET)
    public String gridPage() {

        return "/user/grid";
    }

    @RequestMapping(value = "/mapPage.do", method=RequestMethod.GET)
    public String mapPage() {

        return "/user/map";
    }

    @RequestMapping(value = "/weatherPage.do", method=RequestMethod.GET)
    public String weatherPage() {

        return "/user/weather";
    }


    @RequestMapping(value = "/chartPage.do", method=RequestMethod.GET)
    public String charPage() {

        return "/user/chart";
    }

    @RequestMapping(value="/main.do", method={RequestMethod.GET})
    public String mainPage() {

        return "/user/main";
    }

    @RequestMapping(value="/login.do", method={RequestMethod.POST})
    @ResponseBody
    public String login(@ModelAttribute UserVo vo, HttpSession session) {

            List<UserVo> loginResult = service.login(vo);
            if(loginResult.size() >= 1) {
                UserVo userVo = loginResult.get(0);
                session.setAttribute("userId", userVo.getUserId());
                session.setAttribute("nickname", userVo.getNickname());
                session.setAttribute("userPwd", userVo.getUserPwd());
                session.setAttribute("userName", userVo.getUserName());
                 return   "<script>window.location.href='/main.do';</script>";
            } else {
                return"<script>alert('login fail'); window.location.href='/loginPage.do';</script>";
            }
    }

    @RequestMapping(value = "/signUpInsert.do", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView signUpInsert(@RequestBody UserVo vo){
        int result = service.signUpInsert(vo);
        ModelAndView modelAndView = new ModelAndView("jsonView");
        modelAndView.addObject("result", result);
        return modelAndView;
    }

    @RequestMapping(value="/logout.do", method={RequestMethod.GET})
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/loginPage.do";
    }

    @RequestMapping(value="/userUpdate.do", method=RequestMethod.POST)
    @ResponseBody
    public ModelAndView userUpdate(@RequestBody UserVo vo){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        int userVo = service.userUpdate(vo);
        modelAndView.addObject("userVo", userVo);

        return modelAndView;
    }

    @RequestMapping(value="/selectAbility.do" , method = RequestMethod.GET)
    public ModelAndView  selectAbility(AbilityVo vo){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        AbilityVo data = service.selectAbility(vo);
        modelAndView.addObject("data",data);

        return modelAndView;
    }

    @RequestMapping(value="/lineChart.do", method = RequestMethod.GET)
    public ModelAndView selectLineChart(){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        List<AbilityVo> list = service.selectLineChart();
        modelAndView.addObject("list",list);

        return modelAndView;
    }

    @RequestMapping(value="/selectBox1.do", method = RequestMethod.GET)
    public ModelAndView selectBox1(){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        List<AbilityVo> list = service.selectBox1();
        modelAndView.addObject("list",list);

        return modelAndView;
    }

    @RequestMapping(value="/chart/mixChart.do", method = RequestMethod.GET)
    public ModelAndView mixChart(){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        List<AbilityVo> chart = service.salesData();
        modelAndView.addObject("chart", chart);

        return modelAndView;
    }

}


