package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Hall;
import java.util.List;

public interface HallMapper {
    int deleteByPrimaryKey(Integer hallId);

    int insert(Hall record);

    Hall selectByPrimaryKey(Integer hallId);

    List<Hall> selectAll();

    int updateByPrimaryKey(Hall record);

    List<Hall> getAllHallByCinemaId(Integer cinemaId);
}