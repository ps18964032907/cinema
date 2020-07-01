package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Coupon;
import java.util.List;

public interface CouponMapper {
    int deleteByPrimaryKey(Integer couponId);

    int insert(Coupon record);

    Coupon selectByPrimaryKey(Integer couponId);

    List<Coupon> selectAll();

    int updateByPrimaryKey(Coupon record);
}