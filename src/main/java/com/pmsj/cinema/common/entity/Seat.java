package com.pmsj.cinema.common.entity;

public class Seat {
    private Integer seatId;

    private Integer seatX;

    private Integer seatY;

    private Integer seatTpye;

    private Integer hallMovieId;

    public Integer getSeatId() {
        return seatId;
    }

    public void setSeatId(Integer seatId) {
        this.seatId = seatId;
    }

    public Integer getSeatX() {
        return seatX;
    }

    public void setSeatX(Integer seatX) {
        this.seatX = seatX;
    }

    public Integer getSeatY() {
        return seatY;
    }

    public void setSeatY(Integer seatY) {
        this.seatY = seatY;
    }

    public Integer getSeatTpye() {
        return seatTpye;
    }

    public void setSeatTpye(Integer seatTpye) {
        this.seatTpye = seatTpye;
    }

    public Integer getHallMovieId() {
        return hallMovieId;
    }

    public void setHallMovieId(Integer hallMovieId) {
        this.hallMovieId = hallMovieId;
    }
}