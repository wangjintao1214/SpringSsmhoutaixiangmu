package com.kgc.movie.service.impl;

import com.kgc.movie.mapper.CommodityTypeMapper;
import com.kgc.movie.pojo.CommodityType;
import com.kgc.movie.service.CommodityTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("commodityTypeService")
public class CommodityTypeServiceImpl implements CommodityTypeService {
    @Resource
    CommodityTypeMapper commodityTypeMapper;

    @Override
    public List<CommodityType> selectAll() {
        return commodityTypeMapper.selectByExample(null);
    }

    @Override
    public CommodityType selectById(int id) {
        return commodityTypeMapper.selectByPrimaryKey(id);
    }

    @Override
    public int add(CommodityType commodityType) {
        return commodityTypeMapper.insert(commodityType);
    }

    @Override
    public int del(int id) {
        return commodityTypeMapper.deleteByPrimaryKey(id);
    }
}
