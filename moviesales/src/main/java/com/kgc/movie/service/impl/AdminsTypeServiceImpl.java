package com.kgc.movie.service.impl;

import com.kgc.movie.mapper.AdminsTypeMapper;
import com.kgc.movie.pojo.AdminsType;
import com.kgc.movie.service.AdminsTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("adminsTypeService")
public class AdminsTypeServiceImpl implements AdminsTypeService {
    @Resource
    AdminsTypeMapper adminsTypeMapper;
    @Override
    public List<AdminsType> selectAll() {
        return adminsTypeMapper.selectByExample(null);
    }

    @Override
    public void add(AdminsType adminsType) {
        adminsTypeMapper.insert(adminsType);
    }

    @Override
    public void upd(AdminsType adminsType) {
        adminsTypeMapper.updateByPrimaryKey(adminsType);
    }

    @Override
    public int delete(int id) {
        return adminsTypeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public AdminsType selectByid(int id) {
        return adminsTypeMapper.selectByPrimaryKey(id);
    }
}
