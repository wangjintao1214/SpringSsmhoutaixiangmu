package com.kgc.movie.service.impl;

import com.kgc.movie.mapper.AdminsMapper;
import com.kgc.movie.pojo.Admins;
import com.kgc.movie.pojo.AdminsExample;
import com.kgc.movie.service.AdminsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-19 12:56
 */
@Service
public class AdminsServiceImpl implements AdminsService{
    @Resource
    AdminsMapper adminsMapper;

    @Override
    public Admins selectByName(String name) {
        Admins admins=null;
        AdminsExample example=new AdminsExample();
        AdminsExample.Criteria criteria = example.createCriteria();
        criteria.andNameEqualTo(name);
        List<Admins> admins1 = adminsMapper.selectByExample(example);
        if(admins1!=null&&admins1.size()!=0){
            admins=admins1.get(0);
        }
        return admins;
    }

    @Override
    public List<Admins> selectAllByGrade(String gradeid, String name) {
        AdminsExample example=new AdminsExample();
        AdminsExample.Criteria criteria = example.createCriteria();
        if(gradeid!=null&&gradeid.equals("0")==false){
            criteria.andGradeidEqualTo(Integer.parseInt(gradeid));
        }
        if(name!=null&&name.isEmpty()==false){
            criteria.andNameEqualTo(name);
        }
        List<Admins> admins = adminsMapper.selectByExample(example);
        return admins;
    }

    @Override
    public int update(Admins admins) {
        int i = adminsMapper.updateByPrimaryKeySelective(admins);
        return i;
    }

    @Override
    public int del(int id) {
        int i = adminsMapper.deleteByPrimaryKey(id);
        return i;
    }

    @Override
    public int add(Admins admins) {
        int i = adminsMapper.insertSelective(admins);
        return i;
    }

    @Override
    public Admins selectAllByid(int id) {
        Admins admins = adminsMapper.selectByPrimaryKey(id);
        return admins;
    }
}
