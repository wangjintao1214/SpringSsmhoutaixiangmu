package com.kgc.movie.controller;

import com.kgc.movie.pojo.Admins;
import com.kgc.movie.service.AdminsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author shkstart
 * @create 2020-10-20 9:36
 */
@Controller
public class AdminsController {
    @Resource
    AdminsService adminsService;
    @RequestMapping("/tosels")
    public String tosels(){
        return "user_list";
    }
    @RequestMapping("/dosel")
    @ResponseBody
    public Map<Object,Object> dosel(String grade, String name, Model model){
        Map<Object,Object> map=new HashMap<>();
        List<Admins> list = adminsService.selectAllByGrade(grade, name);
        if(list.size()>0){
            map.put("status","true");
            map.put("list",list);
            return map;
        }else{
            map.put("status","false");
        }
        System.out.println(list.toString());
        return map;
    }
    @RequestMapping("/toadd")
    public String toadd(){
        return "add_user";
    }
    @RequestMapping("/add")
    public String add(Admins admins, Model model, HttpSession session){
        int i = adminsService.add(admins);
        if(i>0){
            /*model.addAttribute("msg","添加成功！！！！");*/
           /* session.setAttribute("msg","添加成功！！！！");*/
            return "redirect:/tosels";
        }else {
           /* model.addAttribute("msg","添加失败！！！!");*/
            session.setAttribute("msg","添加失败！！！！");
            return "redirect:/toadd";
        }
    }
    @RequestMapping("/del")
    public String del(Integer id, Model model, HttpSession session){
        int i = adminsService.del(id);
        if(i>0){
            /*session.setAttribute("msg","删除成功！！！！");*/
            return "user_list";
        }else {
            session.setAttribute("msg","删除失败！！！！");
            return "user_list";
        }
    }
    @RequestMapping("/toupd")
    public String toupd(Integer id,HttpSession session){
        Admins admins = adminsService.selectAllByid(id);
        session.setAttribute("admins",admins);
        return "edit_user";
    }

    @RequestMapping("/upd")
    public String upd(Admins admins, HttpSession session, Model model){
        int i = adminsService.update(admins);
        if(i>0){
           /* model.addAttribute("msg","修改成功！！！");*/
            /*session.setAttribute("msg","修改成功！！！！");*/
            return "redirect:/tosels";
        }else {
            session.setAttribute("msg","修改失败！！！！");
            return "redirect:/tosels";
        }

    }

}
