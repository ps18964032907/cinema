package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.UserCoupon;
import com.pmsj.cinema.common.vo.UserCouponVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

@Repository
public interface UserCouponMapper {
    int insert(UserCoupon record);

    List<UserCoupon> selectAll();

    List<UserCouponVo> selectAllByUserId(@Param("userId") int userId, @Param("date") Date date);
}