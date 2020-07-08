package com.pmsj.cinema.business.service;

import com.pmsj.cinema.business.exception.NullParametersException;
import com.pmsj.cinema.common.entity.HallMovie;
import com.pmsj.cinema.common.mapper.HallMovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author mhd
 * @className HallMovieService
 * @description TODO
 * @create 2020/7/7
 * @since 1.0.0
 */
@Service
public class HallMovieService {
    @Autowired(required = false)
    HallMovieMapper hallMoviemapper;

    public HallMovie selectById(Integer id) {
        if (id==null){
            throw new NullParametersException("HallMovieId is null");
        }
        return hallMoviemapper.selectByPrimaryKey(id);
    }
}
