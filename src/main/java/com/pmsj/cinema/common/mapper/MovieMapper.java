package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.vo.MovieBugAddVo;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieMapper {
    int deleteByPrimaryKey(Integer movieId);

    int insert(Movie record);

    Movie selectByPrimaryKey(Integer movieId);

    List<Movie> selectAll();

    int updateByPrimaryKey(Movie record);

    List<Movie> selectOnline();

    //List<Movie> selectOnlineAll();

    List<Movie> selectComingSoon();

    void insertByMovieBugAddVo(MovieBugAddVo movieBugAddVo);

    int getMaxId();

    //List<Movie> selectComingSoonAll();
}