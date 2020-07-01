package com.pmsj.cinema.common.entity;

import java.util.Date;

public class Condition {
    private Integer conditionId;

    private Date conditionTime;

    private Integer movieId;

    private Integer cinemaId;

    private Integer userId;

    public Integer getConditionId() {
        return conditionId;
    }

    public void setConditionId(Integer conditionId) {
        this.conditionId = conditionId;
    }

    public Date getConditionTime() {
        return conditionTime;
    }

    public void setConditionTime(Date conditionTime) {
        this.conditionTime = conditionTime;
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}