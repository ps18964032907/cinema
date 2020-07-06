package com.pmsj.cinema.common.mapper;

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.vo.MovieBugAddVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Date;
import java.util.List;

@Repository
public interface MovieMapper {
    int deleteByPrimaryKey(Integer movieId);

    int insert(Movie record);

    Movie selectByPrimaryKey(Integer movieId);

    List<Movie> selectAll();

    int updateByPrimaryKey(Movie record);

    List<Movie> selectOnline();

    List<Movie> selectTopTen(Integer status);

    List<Movie> selectComingSoon();

    void insertByMovieBugAddVo(MovieBugAddVo movieBugAddVo);

    int getMaxId();

    List<Movie> selectAllMovie(@Param(value = "status") Integer status,@Param(value = "tId") Integer typeId,@Param(value = "area")String movieArea,@Param(value = "year") String movieReleaseTime,@Param(value ="paixu" ) Integer paixu);

//    List<Movie> selectAllComingSoonMovie(@Param(value = "typeId") Integer typeId,@Param(value = "area")String movieArea,@Param(value = "year")Date movieReleaseTime);
//
//    List<Movie> selectAllOfflineMovie(@Param(value = "typeId") Integer typeId,@Param(value = "area")String movieArea,@Param(value = "year")Date movieReleaseTime);
}