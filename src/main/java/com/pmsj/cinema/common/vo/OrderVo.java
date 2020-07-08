package com.pmsj.cinema.common.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.pmsj.cinema.common.entity.Seat;
import lombok.Data;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/2 16:47
 **/

@Data
@ToString
public class OrderVo {

    private Integer orderId;

    private String orderNo;

    private Integer movieId;

    private Integer cinemaId;

    private Integer hallId;

    private Integer seatId;

    private BigDecimal orderTotalDiscountsCash;

    private Integer couponId;

    private Integer userId;

    private Integer orderStatus;

    private Integer orderCount;

    private BigDecimal orderTotalInitialCash;

    private BigDecimal orderUnitprice;

    private String movieName;

    private String couponName;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date orderTime;

    //详细的影院影厅座位
    private String cinemaNameHallNameXY;

    private List<Seat> seatList;

    private String cinemaName;

    private String hallName;

    private String movieImg;


}
