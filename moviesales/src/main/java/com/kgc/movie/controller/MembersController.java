package com.kgc.movie.controller;

import com.kgc.movie.pojo.AdminsType;
import com.kgc.movie.service.AdminsTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MembersController {
    @Resource
    AdminsTypeService adminsTypeService;
    @RequestMapping("/hyselect")
    public String select(Model model){
        List<AdminsType> adminsTypes=adminsTypeService.selectAll();
        model.addAttribute("list",adminsTypes);
        return "user_rank";
    }
    @RequestMapping("/tohyadd")
    public String toaddhuiyuan(){
        return "add_user_rank";
    }
    @RequestMapping("/dohyadd")
    public String dohyadd(AdminsType adminsType){
        adminsTypeService.add(adminsType);
        return "redirect:/hyselect";
    }
    @RequestMapping("tohyupd")
    public String tohyupd(int id,Model model){
        AdminsType adminsType=adminsTypeService.selectByid(id);
        model.addAttribute("list",adminsType);
        return "edit_user_rank";
    }
    @RequestMapping("dohyupd")
    public String dohyupd(int id,String type,String grade,String gradeIscount,HttpSession session){
        AdminsType a=new AdminsType();
        a.setId(id);
        a.setType(type);
        a.setGrade(grade);
        a.setGradeIscount(gradeIscount);
        adminsTypeService.upd(a);
        session.setAttribute("list","");
        return "redirect:/hyselect";
    }
    @RequestMapping("/hydel")
    public String hydel(int id,HttpSession session){
        int del=adminsTypeService.delete(id);
        if (del>0){
            session.setAttribute("del","删除成功");
        }
        return "redirect:/hyselect";
    }
}
