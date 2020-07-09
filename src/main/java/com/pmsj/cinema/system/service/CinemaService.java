package com.pmsj.cinema.system.service;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/3 19:07
 **/

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.*;
import com.pmsj.cinema.common.mapper.*;
import com.pmsj.cinema.common.vo.CinemaVo;
import com.pmsj.cinema.common.vo.HallMovieVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CinemaService {


    @Autowired
    BrandMapper brandMapper;

    @Autowired
    HallMapper hallMapper;

    @Autowired
    HallTpyeMapper hallTpyeMapper;

    @Autowired
    HallMovieMapper hallMovieMapper;

    @Autowired
    CinemaMapper cinemaMapper;

    public List<Brand> getAllCinameType() {
        return brandMapper.selectAll(null);
    }

    public int addCinema(Cinema cinema) {
        int insert = cinemaMapper.insert(cinema);

        return insert;

    }


    public PageInfo<CinemaVo> getAllCinema(Integer page, Integer limit, Cinema cinema) {


        PageHelper.startPage(page, limit);

        List<CinemaVo> allCinemaVo = cinemaMapper.getAllCinemaVo(cinema);

        return new PageInfo<CinemaVo>(allCinemaVo);
    }

    public List<Cinema> getAllCinema() {
        return cinemaMapper.selectAll();
    }

    public Cinema getCinemaById(Integer cinemaId) {
        return cinemaMapper.selectByPrimaryKey(cinemaId);
    }

    public void editCinema(Cinema cinema) {
        cinemaMapper.updateByPrimaryKey(cinema);

    }

    public void delCinemaById(Integer cinemaId) {
        cinemaMapper.deleteByPrimaryKey(cinemaId);
    }

    public List<HallTpye> getAllHallType() {

        return hallTpyeMapper.selectAll();
    }

    public PageInfo<CinemaVo> getAllCinemaByAll(String brand, String hallType, String area, String province, String city, Integer page) {


        PageHelper.startPage(page, 8);
        List<CinemaVo> allCinemaByAll = cinemaMapper.getAllCinemaByAll(brand, hallType, area, province, city);


        return new PageInfo<CinemaVo>(allCinemaByAll);
    }

    public List<HallMovieVo> getHallMovies(Integer cinemaId, Date date) {
        System.out.println(date);
        return hallMovieMapper.getHallMovies(cinemaId, date);
    }

    public List<Hall> getAllHallByCinemaId(Integer cinemaId) {
        return hallMapper.getAllHallByCinemaId(cinemaId);

    }
}
