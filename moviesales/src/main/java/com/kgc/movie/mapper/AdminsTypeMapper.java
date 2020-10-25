package com.kgc.movie.mapper;

import com.kgc.movie.pojo.AdminsType;
import com.kgc.movie.pojo.AdminsTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminsTypeMapper {
    int countByExample(AdminsTypeExample example);

    int deleteByExample(AdminsTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AdminsType record);

    int insertSelective(AdminsType record);

    List<AdminsType> selectByExample(AdminsTypeExample example);

    AdminsType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AdminsType record, @Param("example") AdminsTypeExample example);

    int updateByExample(@Param("record") AdminsType record, @Param("example") AdminsTypeExample example);

    int updateByPrimaryKeySelective(AdminsType record);

    int updateByPrimaryKey(AdminsType record);
}