package com.kgc.movie.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.movie.mapper.CommodityMapper;
import com.kgc.movie.pojo.Commodity;
import com.kgc.movie.pojo.CommodityExample;
import com.kgc.movie.service.CommodityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author wangyf
 * @create 2020-10-27 13:15
 */
@Service
public class CommodityServiceImpl implements CommodityService{

    @Resource
    CommodityMapper commodityMapper;
    @Override
    public PageInfo<Commodity> selectByPage(Integer pageNum,String name) {
        CommodityExample commodityExample = new CommodityExample();
        if(name!=null){
            CommodityExample.Criteria criteria = commodityExample.createCriteria();
            criteria.andNameLike("%"+name+"%");
        }
        int pageSize=1;
        PageHelper.startPage(pageNum,pageSize);
        List<Commodity> commodities = commodityMapper.selectByExample(commodityExample);
        PageInfo<Commodity> pageInfo=new PageInfo<>(commodities);
        return pageInfo;
    }

    @Override
    public Commodity getCommodity(int id) {
        Commodity commodity = commodityMapper.selectByPrimaryKey(id);
        return commodity;
    }

    @Override
    public int updateCommdity(Commodity commodity) {
        return  commodityMapper.updateByPrimaryKeySelective(commodity);
    }

    @Override
    public int addCommodity(Commodity commodity) {
        return commodityMapper.insertSelective(commodity);
    }

    @Override
    public int delCommodity(int id) {
        return commodityMapper.deleteByPrimaryKey(id);
    }


}
