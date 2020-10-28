package com.kgc.movie.controller;

import com.github.pagehelper.PageInfo;
import com.kgc.movie.pojo.Commodity;
import com.kgc.movie.service.impl.CommodityServiceImpl;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.naming.Name;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * @author wangyf
 * @create 2020-10-27 11:38
 */
@Controller
public class CommodityController {
    @Resource
    CommodityServiceImpl commodityService;

    @RequestMapping("/showCommodity")
    public String toShowCommodity(@RequestParam(value = "pageNum", required = false, defaultValue = "1") Integer pageNum,String productName, Model model) {
        PageInfo<Commodity> pageInfo = commodityService.selectByPage(pageNum, productName);
        model.addAttribute("pageInfo", pageInfo);
        return "product_list";
    }

    @RequestMapping("/updateCommdity/{id}")
    public String toUpdateCommodity(@PathVariable("id") int id, Model model) {
        Commodity commodity = commodityService.getCommodity(id);
        model.addAttribute("Commodity", commodity);
        return "edit_product";
    }

    @RequestMapping("/doUpdateCommodity")
    public String doUpdateCommodity(Commodity commodity, int id, String marketValue, String membershipPrice, String name, int num, HttpServletRequest request, Model model, MultipartFile product_img) {
        commodity.setId(id);
        commodity.setMarketValue(marketValue);
        commodity.setMembershipPrice(membershipPrice);
        commodity.setName(name);
        commodity.setNum(num);
        String path = request.getSession().getServletContext().getRealPath("/static/uploadFiles");
        //获取原文件名
        String oldFileName = product_img.getOriginalFilename();
        //获取扩展名
        String prefix = FilenameUtils.getExtension(oldFileName);//原文件后缀
        //生成新文件名
        String newFileName = System.currentTimeMillis() + "_" + RandomUtils.nextInt(1000000) + "_." + prefix;
        //封装文件对象
        File targetFile = new File(path, newFileName);
        try {
            //实现上传
            product_img.transferTo(targetFile);
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        commodity.setPicture(newFileName);
        //上传图片
        int result = commodityService.updateCommdity(commodity);
        if (result > 0) {
            model.addAttribute("msg", "修改成功");
            return "redirect:/showCommodity";
        } else {
            model.addAttribute("msg", "修改失败");
            return "redirect:/showCommodity";
        }

    }

    @RequestMapping("/insertCommodity")//添加
    public String insertCommodity(Commodity commodity,Model model,HttpServletRequest request,MultipartFile product_img){
        String path = request.getSession().getServletContext().getRealPath("/static/uploadFiles");
        //获取原文件名
        String oldFileName = product_img.getOriginalFilename();
        //获取扩展名
        String prefix = FilenameUtils.getExtension(oldFileName);//原文件后缀
        //生成新文件名
        String newFileName = System.currentTimeMillis() + "_" + RandomUtils.nextInt(1000000) + "_." + prefix;
        //封装文件对象
        File targetFile = new File(path, newFileName);
        try {
            //实现上传
            product_img.transferTo(targetFile);
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        commodity.setPicture(newFileName);
        //上传图片
        int result = commodityService.addCommodity(commodity);
        if (result > 0) {
            model.addAttribute("msg", "添加成功");
            return "redirect:/showCommodity";
        } else {
            model.addAttribute("msg", "添加失败");
            return "redirect:/showCommodity";
        }
    }
    @RequestMapping("/delCommodity/{id}")//删除
    public String delCommodity(@PathVariable("id") int id,Model model){
        int result = commodityService.delCommodity(id);
        if (result > 0) {
            model.addAttribute("msg", "删除成功");
            return "redirect:/showCommodity";
        } else {
            model.addAttribute("msg", "删除失败");
            return "redirect:/showCommodity";
        }
    }
}
