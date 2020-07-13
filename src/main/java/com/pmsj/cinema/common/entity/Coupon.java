package com.pmsj.cinema.common.entity;

import lombok.ToString;

@ToString
public class Coupon {
    private Integer couponId;

    private String couponName;

    private Long couponMoeny;

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }

    public String getCouponName() {
        return couponName;
    }

    public void setCouponName(String couponName) {
        this.couponName = couponName == null ? null : couponName.trim();
    }

    public Long getCouponMoeny() {
        return couponMoeny;
    }

    public void setCouponMoeny(Long couponMoeny) {
        this.couponMoeny = couponMoeny;
    }
}