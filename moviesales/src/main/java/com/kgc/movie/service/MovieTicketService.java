package com.kgc.movie.service;

import com.kgc.movie.pojo.MovieTicket;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-17 18:29
 */
public interface MovieTicketService {
    List<MovieTicket> selectall(String movieName);
}
