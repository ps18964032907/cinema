package com.pmsj.cinema.system.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/6 19:12
 **/
@Service
public class MovieService {

    @Autowired
    MovieMapper movieMapper;


    public PageInfo<Movie> getAllMovies(Integer page, Integer limit) {

        PageHelper.startPage(page, limit);
        List<Movie> movies = movieMapper.selectAll();
        return new PageInfo<Movie>(movies);

    }
}
