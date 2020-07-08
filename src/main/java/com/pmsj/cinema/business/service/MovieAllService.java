package com.pmsj.cinema.business.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.entity.MovieTpye;
import com.pmsj.cinema.common.mapper.MovieMapper;
import com.pmsj.cinema.common.mapper.MovieTpyeMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @Author sjh
 * @creat 2020/7/4 11:11
 */
@Service
public class MovieAllService {
    @Autowired
    MovieMapper movieMapper;
    @Autowired
    MovieTpyeMapper movieTpyeMapper;

    public PageInfo<Movie> selectAllMovie(Integer offset, Integer limit, Integer movieStatus, Integer typeId, String movieArea, String movieReleaseTime, Integer paixu) {
        int PageNum = 1;
        if (offset != 0) {
            PageNum = (offset / limit) + 1;
        }
        if (offset != -1 && limit != -1) {
            PageHelper.startPage(PageNum, limit);
        }
        List<Movie> selectAllMovie = movieMapper.selectAllMovie(movieStatus, typeId, movieArea, movieReleaseTime, paixu);
        PageInfo<Movie> AllMovie = new PageInfo<>(selectAllMovie);
        return AllMovie;
    }

    //    public PageInfo<Movie> selectAllComingSoonMovie(Integer offset,Integer limit,Integer typeId,String movieArea,Date movieReleaseTime){
//        int PageNum = 1;
//        if (offset != 0) {
//            PageNum = (offset / limit) + 1;
//        }
//        if (offset != -1 && limit != -1) {
//            PageHelper.startPage(PageNum, limit);
//        }
//        List<Movie> selectAllComingSoonMovie = movieMapper.selectAllComingSoonMovie(typeId,movieArea,movieReleaseTime);
//        PageInfo<Movie> selectComingSoonMovie=new PageInfo<>(selectAllComingSoonMovie);
//        return selectComingSoonMovie;
//    }
//
//
//    public PageInfo<Movie> selectAllOfflineMovie(Integer offset,Integer limit,Integer typeId,String movieArea,Date movieReleaseTime){
//        int PageNum = 1;
//        if (offset != 0) {
//            PageNum = (offset / limit) + 1;
//        }
//        if (offset != -1 && limit != -1) {
//            PageHelper.startPage(PageNum, limit);
//        }
//        List<Movie> selectAllOfflineMovie = movieMapper.selectAllOfflineMovie(typeId,movieArea,movieReleaseTime);
//        PageInfo<Movie> selectOfflineMovie=new PageInfo<>(selectAllOfflineMovie);
//        return selectOfflineMovie;
//    }
//
    public List<MovieTpye> selectAllMovieType() {
        return movieTpyeMapper.selectAll();
    }

    public List<MovieTpye> selectNoMovieType(Integer movieId) {
        return movieTpyeMapper.selectNoMovieType(movieId);
    }

    public List<MovieTpye> selectCheckedTpyes(Integer movieId) {
        return movieTpyeMapper.selectCheckedTpyes(movieId);
    }
}
