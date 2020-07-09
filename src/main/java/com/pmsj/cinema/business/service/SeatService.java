package com.pmsj.cinema.business.service;

import com.pmsj.cinema.business.exception.NullParametersException;
import com.pmsj.cinema.common.entity.Seat;
import com.pmsj.cinema.common.mapper.SeatMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author mhd
 * @className HallMovieService
 * @description TODO
 * @create 2020/7/7
 * @since 1.0.0
 */
@Service
public class SeatService {
    @Autowired(required = false)
    SeatMapper seatMapper;

    public List<Seat> getNonSeat(Integer hallId) {
        if (hallId==null){
            throw new NullParametersException("HallId is null");
        }
        return seatMapper.selectByHallId(hallId);
    }

    public List<Seat> getSelectedSeat(Integer hallMovieId) {
        if (hallMovieId==null){
            throw new NullParametersException("HallMovieId is null");
        }
        return seatMapper.selectByHallMovieId(hallMovieId);
    }
}
