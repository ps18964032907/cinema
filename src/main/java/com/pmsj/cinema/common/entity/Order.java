package com.pmsj.cinema.common.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
    private Integer orderId;

    private String orderNo;

    private Integer movieId;

    private Integer cinemaId;

    private Integer hallId;

    private BigDecimal orderTotalDiscountsCash;

    private Integer couponId;

    private Integer userId;

    private Integer orderStatus;

    private Integer orderCount;

    private BigDecimal orderTotalInitialCash;

    private BigDecimal orderUnitprice;

    private Date orderTime;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo == null ? null : orderNo.trim();
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

    public Integer getHallId() {
        return hallId;
    }

    public void setHallId(Integer hallId) {
        this.hallId = hallId;
    }

    public BigDecimal getOrderTotalDiscountsCash() {
        return orderTotalDiscountsCash;
    }

    public void setOrderTotalDiscountsCash(BigDecimal orderTotalDiscountsCash) {
        this.orderTotalDiscountsCash = orderTotalDiscountsCash;
    }

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Integer getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(Integer orderCount) {
        this.orderCount = orderCount;
    }

    public BigDecimal getOrderTotalInitialCash() {
        return orderTotalInitialCash;
    }

    public void setOrderTotalInitialCash(BigDecimal orderTotalInitialCash) {
        this.orderTotalInitialCash = orderTotalInitialCash;
    }

    public BigDecimal getOrderUnitprice() {
        return orderUnitprice;
    }

    public void setOrderUnitprice(BigDecimal orderUnitprice) {
        this.orderUnitprice = orderUnitprice;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }
}