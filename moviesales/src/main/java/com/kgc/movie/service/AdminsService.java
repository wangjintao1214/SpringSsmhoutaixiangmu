package com.kgc.movie.service;

import com.kgc.movie.pojo.Admins;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-19 12:55
 */
public interface AdminsService {
    Admins selectByName(String name);
    List<Admins> selectAllByGrade(String gradeid, String name);
    int update(Admins admins);
    int del(int id);
    int add(Admins admins);
    Admins selectAllByid(int id);
}
