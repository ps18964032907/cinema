package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.MovieActor;
import java.util.List;

public interface MovieActorMapper {
    int deleteByPrimaryKey(Integer movieId);

    int insert(MovieActor record);

    MovieActor selectByPrimaryKey(Integer movieId);

    List<MovieActor> selectAll();

    int updateByPrimaryKey(MovieActor record);
}