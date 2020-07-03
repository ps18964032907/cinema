package com.pmsj.cinema.system.service;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/3 19:07
 **/

import com.pmsj.cinema.common.entity.Brand;
import com.pmsj.cinema.common.entity.Cinema;
import com.pmsj.cinema.common.mapper.BrandMapper;
import com.pmsj.cinema.common.mapper.CinemaMapper;
import com.pmsj.cinema.common.vo.CinemaVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CinemaService {


    @Autowired
    BrandMapper brandMapper;


    @Autowired
    CinemaMapper cinemaMapper;

    public List<Brand> getAllCinameType() {
        return brandMapper.selectAll(null);
    }

    public int addCinema(Cinema cinema) {
        int insert = cinemaMapper.insert(cinema);

        return insert;

    }


    public List<CinemaVo> getAllCinema() {
        return cinemaMapper.getAllCinemaVo();
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
}
