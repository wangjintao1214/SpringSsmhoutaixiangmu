package com.kgc.movie.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.movie.pojo.CommodityType;
import com.kgc.movie.service.CommodityTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommodityTypeController {
    @Resource
    CommodityTypeService commodityTypeService;
    @RequestMapping("/product_category")
    public String product_category(Model model,HttpSession session, String pageIndex){
        Integer pageNum=1;
        if(pageIndex!=null){
            pageNum=Integer.parseInt(pageIndex);
        }
        Integer pageSize=2;
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("id desc");
        List<CommodityType> list=commodityTypeService.selectAll();
        PageHelper.startPage(pageNum,pageSize);
        PageInfo<CommodityType> pageInfo=new PageInfo<>(list);
        model.addAttribute("pageInfo",pageInfo);
        session.invalidate();
        return "product_category";
    }

    @RequestMapping("/add_category")
    public String add_category(Model model,HttpSession session,CommodityType commodityType){
       int add_category=commodityTypeService.add(commodityType);
       if(add_category>0){
           session.setAttribute("mgs","添加成功");
           return "redirect:product_category";
       }else{
           session.setAttribute("mgs1","添加失败");
           return "add_category";
       }
    }

    @RequestMapping("/del_category")
    public String del_category(Model model,HttpSession session,int id){
        int del=commodityTypeService.del(id);
        if(del>0){
            session.setAttribute("mgs","删除成功");
            return "redirect:product_category";
        }else{
            session.setAttribute("mgs","删除失败");
            return "redirect:product_category";
        }
    }
}
