package com.kgc.movie.controller;

import com.kgc.movie.pojo.MovieTicket;
import com.kgc.movie.service.MovieTicketService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author shkstart
 * @create 2020-10-17 18:36
 */
@Controller
public class SelController {
    @Resource
    MovieTicketService movieTicketService;
    @RequestMapping("/tosel")
    public String tosel(){
        return "order_list";
    }
    @RequestMapping("/sel")
    @ResponseBody
    public Map<String,Object> sel(String movieName, HttpSession session){
        Map<String,Object> map=new HashMap<>();
        List<MovieTicket> list = movieTicketService.selectall(movieName);
        if (list.size()>0){
            map.put("status","true");
            map.put("list",list);
            return map;
        }else{
            map.put("status","false");
        }
        System.out.println(list.toString());
        return map;
    }
}
