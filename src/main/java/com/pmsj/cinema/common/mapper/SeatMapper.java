package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Seat;
import java.util.List;

public interface SeatMapper {
    int deleteByPrimaryKey(Integer seatId);

    int insert(Seat record);

    Seat selectByPrimaryKey(Integer seatId);

    List<Seat> selectAll();

    int updateByPrimaryKey(Seat record);
}