package com.pmsj.cinema.common.entity;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

@Data
@ToString
public class UserCoupon {
    private Integer userId;

    private Integer couponId;

    private Integer couponStatus;

    private Date couponDate;

    private Condition condition;

}