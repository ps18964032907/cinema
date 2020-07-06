package com.pmsj.cinema.system.service;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/3 19:07
 **/

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Brand;
import com.pmsj.cinema.common.entity.Cinema;
import com.pmsj.cinema.common.entity.HallTpye;
import com.pmsj.cinema.common.mapper.BrandMapper;
import com.pmsj.cinema.common.mapper.CinemaMapper;
import com.pmsj.cinema.common.mapper.HallTpyeMapper;
import com.pmsj.cinema.common.vo.CinemaVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CinemaService {


    @Autowired
    BrandMapper brandMapper;

    @Autowired
    HallTpyeMapper hallTpyeMapper;


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


        PageHelper.startPage(page, 1);
        List<CinemaVo> allCinemaByAll = cinemaMapper.getAllCinemaByAll(brand, hallType, area, province, city);


        return new PageInfo<CinemaVo>(allCinemaByAll);
    }
}
