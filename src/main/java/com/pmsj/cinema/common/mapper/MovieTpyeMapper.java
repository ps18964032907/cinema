package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.MovieTpye;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieTpyeMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(MovieTpye record);

    MovieTpye selectByPrimaryKey(Integer typeId);

    List<MovieTpye> selectAll();

    int updateByPrimaryKey(MovieTpye record);

    MovieTpye selectByName(String movieTpyeName);

    int getMaxId();

    void addMovieTypeMid(@Param("movieId") Integer movieId, @Param("maxId") int maxId);

}