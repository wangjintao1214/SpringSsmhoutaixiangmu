package com.kgc.movie.service;

import com.kgc.movie.pojo.AdminsType;

import java.util.List;

public interface AdminsTypeService {
    List<AdminsType> selectAll();
    void add(AdminsType adminsType);
    void upd(AdminsType adminsType);
    public int delete(int id);
    public AdminsType selectByid(int id);
}
