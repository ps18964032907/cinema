package com.pmsj.cinema.common.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.pmsj.cinema.common.mapper.MovieMapper;
import lombok.ToString;

import java.util.Date;
import java.util.Objects;

@ToString
public class Movie {
    private Integer movieId;

    private String movieName;
    @JsonFormat (pattern = "yyyy年MM月dd日")
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

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName == null ? null : movieName.trim();
    }

    public Date getMovieReleaseTime() {
        return movieReleaseTime;
    }

    public void setMovieReleaseTime(Date movieReleaseTime) {
        this.movieReleaseTime = movieReleaseTime;
    }

    public String getMovieArea() {
        return movieArea;
    }

    public void setMovieArea(String movieArea) {
        this.movieArea = movieArea == null ? null : movieArea.trim();
    }

    public String getMovieInfo() {
        return movieInfo;
    }

    public void setMovieInfo(String movieInfo) {
        this.movieInfo = movieInfo == null ? null : movieInfo.trim();
    }

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

    public String getMovieImg() {
        return movieImg;
    }

    public void setMovieImg(String movieImg) {
        this.movieImg = movieImg == null ? null : movieImg.trim();
    }

    public String getMovieEname() {
        return movieEname;
    }

    public void setMovieEname(String movieEname) {
        this.movieEname = movieEname == null ? null : movieEname.trim();
    }

    public Float getMovieScore() {
        return movieScore;
    }

    public void setMovieScore(Float movieScore) {
        this.movieScore = movieScore;
    }

    public Integer getMovieStatus() {
        return movieStatus;
    }

    public void setMovieStatus(Integer movieStatus) {
        this.movieStatus = movieStatus;
    }

    public Integer getMovieCount() {
        return movieCount;
    }

    public void setMovieCount(Integer movieCount) {
        this.movieCount = movieCount;
    }

    public Integer getMovieBoxOffice() {
        return movieBoxOffice;
    }

    public void setMovieBoxOffice(Integer movieBoxOffice) {
        this.movieBoxOffice = movieBoxOffice;
    }

    public String getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(String movieTime) {
        this.movieTime = movieTime == null ? null : movieTime.trim();
    }
}