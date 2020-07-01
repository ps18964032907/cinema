package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.HallMovie;
import java.util.List;

public interface HallMovieMapper {
    int deleteByPrimaryKey(Integer hallMovieId);

    int insert(HallMovie record);

    HallMovie selectByPrimaryKey(Integer hallMovieId);

    List<HallMovie> selectAll();

    int updateByPrimaryKey(HallMovie record);
}