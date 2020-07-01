package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.UserCoupon;
import java.util.List;

public interface UserCouponMapper {
    int insert(UserCoupon record);

    List<UserCoupon> selectAll();
}