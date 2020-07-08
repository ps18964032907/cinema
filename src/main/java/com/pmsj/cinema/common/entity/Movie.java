package com.pmsj.cinema.common.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;
import java.util.Objects;

@ToString
@Data
public class Movie {
    private Integer movieId;

    private String movieName;
    @JsonFormat(pattern = "yyyy年MM月dd日")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date movieReleaseTime;

    private String movieArea;

    private String movieInfo;

    private String movieImg;

    private String movieEname;

    private Float movieScore;

    private Integer movieStatus;

    private Integer movieCount;

    private Integer movieBoxOffice;

    private String movieTime;

    private Integer movieWantCount;

    private String types[];

    private List<MovieTpye> movieTpyeList;

    private Integer typeId;

    private Integer paixu;

    private List<Cast> actor;


//    private

    private List<Cast> cast;


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Movie movie = (Movie) o;
        return Objects.equals(movieName, movie.movieName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(movieName);
    }

}