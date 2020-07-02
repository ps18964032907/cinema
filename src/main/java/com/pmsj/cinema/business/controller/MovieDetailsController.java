package com.pmsj.cinema.business.controller;

import com.pmsj.cinema.business.service.MovieDetailsService;
import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.util.MovieDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author sjh
 * @creat 2020/7/1 11:26
 */
@RestController
@RequestMapping("movieDetails")
public class MovieDetailsController {
    @Autowired
    MovieDetailsService movieDetailsService;

    @RequestMapping("indexMovieDetails/{movieId}")
    public Movie selectByPrimaryKey(@PathVariable Integer movieId) {
        System.out.println(movieId);
        Movie movie = movieDetailsService.selectByPrimaryKey(movieId);
        return movie;
    }
}
