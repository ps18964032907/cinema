package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Cinema;
import java.util.List;

public interface CinemaMapper {
    int deleteByPrimaryKey(Integer cinemaId);

    int insert(Cinema record);

    Cinema selectByPrimaryKey(Integer cinemaId);

    List<Cinema> selectAll();

    int updateByPrimaryKey(Cinema record);
}