package com.pmsj.cinema.system.controller;

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.business.service.MovieActorService;
import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.mapper.MovieMapper;
import com.pmsj.cinema.common.vo.CinemaVo;
import com.pmsj.cinema.system.service.MovieService;
import com.pmsj.cinema.system.util.ReturnUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/6 19:10
 **/
@Controller
@RequestMapping("movie")
public class MovieController {
    @Autowired
    MovieService movieService;

    @RequestMapping("getAllMovie")
    @ResponseBody
    public ReturnUtil getAllMovie(Integer page, Integer limit) {


        if (page == null || page == 0) {
            page = 1;
        }
        if (limit == null || limit == 0) {
            limit = 5;
        }

        PageInfo<Movie> allMovies = movieService.getAllMovies(page, limit);

        ReturnUtil returnUtil = new ReturnUtil(0, "success", allMovies.getTotal(), allMovies.getList());
        return returnUtil;
    }
}
