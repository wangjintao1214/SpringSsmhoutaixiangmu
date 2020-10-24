package com.kgc.movie.service.impl;

import com.kgc.movie.mapper.MovieTicketMapper;
import com.kgc.movie.pojo.MovieTicket;
import com.kgc.movie.pojo.MovieTicketExample;
import com.kgc.movie.service.MovieTicketService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-17 18:29
 */
@Service
public class MovieTicketServiceImpl implements MovieTicketService {

    @Resource
    MovieTicketMapper movieTicketMapper;
    @Override
    public List<MovieTicket> selectall(String movieName) {
        MovieTicketExample example=new MovieTicketExample();
        MovieTicketExample.Criteria criteria = example.createCriteria();
        if(movieName.isEmpty()==false&&movieName!=null){
            criteria.andMovieNameEqualTo(movieName);
        }
    /*    PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("id desc");*/
        List<MovieTicket> movieTickets = movieTicketMapper.selectByExample(example);
        return movieTickets;
    }
}
