package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Cast;
import java.util.List;

public interface CastMapper {
    int deleteByPrimaryKey(Integer actorId);

    int insert(Cast record);

    Cast selectByPrimaryKey(Integer actorId);

    List<Cast> selectAll();

    int updateByPrimaryKey(Cast record);
}