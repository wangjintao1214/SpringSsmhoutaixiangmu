package com.kgc.movie.service;

import com.github.pagehelper.PageInfo;
import com.kgc.movie.pojo.Commodity;

/**
 * @author wangyf
 * @create 2020-10-27 11:39
 */
public interface CommodityService {
    //分页展示
    PageInfo<Commodity> selectByPage(Integer pageNum,String name);
    //修改先查询
    Commodity getCommodity(int id);
    int updateCommdity(Commodity commodity);
    //查询
    //添加
    int addCommodity(Commodity commodity);
    //删除
    int delCommodity(int id);
}
