package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.MovieActor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieActorMapper {
    int deleteByPrimaryKey(Integer movieId);

    int insert(MovieActor record);

    MovieActor selectByPrimaryKey(Integer movieId);

    List<MovieActor> selectAll();

    int updateByPrimaryKey(MovieActor record);
}