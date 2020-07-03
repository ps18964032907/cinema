package com.pmsj.cinema.business.service;

import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.entity.MovieTpye;
import com.pmsj.cinema.common.mapper.MovieMapper;
import com.pmsj.cinema.common.mapper.MovieTpyeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author sjh
 * @creat 2020/7/1 11:20
 *
 */
@Service
public class MovieDetailsService {
    @Autowired
    MovieMapper movieMapper;
    @Autowired
    MovieTpyeMapper movieTpyeMapper;
    public Movie selectByPrimaryKey(Integer movieId){
        return movieMapper.selectByPrimaryKey(movieId);
    }
    public List<MovieTpye> selectByMovieId(Integer movieId){
        return movieTpyeMapper.selectByMovieId(movieId);
    }
}
