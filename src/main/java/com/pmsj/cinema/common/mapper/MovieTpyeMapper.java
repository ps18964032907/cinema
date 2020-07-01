package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.MovieTpye;
import java.util.List;

public interface MovieTpyeMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(MovieTpye record);

    MovieTpye selectByPrimaryKey(Integer typeId);

    List<MovieTpye> selectAll();

    int updateByPrimaryKey(MovieTpye record);
}