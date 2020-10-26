package com.kgc.movie.service;

import com.kgc.movie.pojo.CommodityType;

import java.util.List;

public interface CommodityTypeService {
    List<CommodityType> selectAll();

    int add(CommodityType commodityType);

    int del(int id);
}
