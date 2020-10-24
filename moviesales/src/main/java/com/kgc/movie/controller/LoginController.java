package com.kgc.movie.controller;

import com.kgc.movie.pojo.Admins;
import com.kgc.movie.service.AdminsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author shkstart
 * @create 2020-09-15 11:00
 */
@Controller
public class LoginController {
    @Resource
    AdminsService adminsService;
    @RequestMapping("/")
    public String index(){
        return "adminLogin";
    }
    @RequestMapping("/dologin")
    public String login(String name, String passwd, HttpSession session, Model model){
        Admins admins = adminsService.selectByName(name);
        if(admins==null){
            model.addAttribute("msg","用户名输入错误！！！");
            return  "adminLogin";
        }else if(admins.getPasswd().equals(passwd)==false){
            model.addAttribute("msg","用户名密码输入错误！！！");
            return "adminLogin";
        }else{
            session.setAttribute("admins",admins);
            /*model.addAttribute("msg","登录成功！！！");*/
            return "index";
        }
    }
  /*  @RequestMapping("/tologout")
    public String tologout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }*/
}
