package com.pmsj.cinema.business.controller;

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.business.service.MovieAllService;
import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.entity.MovieTpye;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

/**
 * @Author sjh
 * @creat 2020/7/4 11:11
 */
@RestController
@RequestMapping("AllMovie")
public class MovieAllController {
    @Autowired
    MovieAllService movieAllService;
    @RequestMapping("/OnlineMovie")
    public PageInfo<Movie> selectAllOnlineMovie(Integer offset, Integer limit, Integer typeId, String movieArea, Date movieReleaseTime){
        return movieAllService.selectAllOnlineMovie(offset,limit,typeId,movieArea,movieReleaseTime);
    }

    @RequestMapping("/ComingSoonMovie")
    public PageInfo<Movie> selectAllComingSoonMovie(Integer offset, Integer limit, Integer typeId, String movieArea, Date movieReleaseTime){
        return movieAllService.selectAllComingSoonMovie(offset,limit,typeId,movieArea,movieReleaseTime);
    }

    @RequestMapping("/OfflineMovie")
    public PageInfo<Movie> selectAllOfflineMovie(Integer offset, Integer limit, Integer typeId, String movieArea, Date movieReleaseTime){
        return movieAllService.selectAllOfflineMovie(offset,limit,typeId,movieArea,movieReleaseTime);
    }
    @RequestMapping("/AllMovieType")
    public List<MovieTpye> selectAllMovieType(){
        return movieAllService.selectAllMovieType();
    }

}
