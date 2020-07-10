package com.pmsj.cinema.business.controller;

import com.pmsj.cinema.business.service.*;
import com.pmsj.cinema.business.util.DateUtil;
import com.pmsj.cinema.common.entity.*;
import com.pmsj.cinema.common.vo.TicketsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.*;

/**
 * @author mhd
 * @className HallMovieController
 * @description TODO
 * @create 2020/7/7
 * @since 1.0.0
 */
@RestController
@RequestMapping("/HallMovie")
public class HallMovieController {

    @Autowired
    HallMovieService hallMovieService;
    @Autowired
    HallService hallService;
    @Autowired
    MovieDetailsService movieDetailsService;
    @Autowired
    HallTypeService hallTypeService;
    @Autowired
    SeatService seatService;
    @Autowired
    OrderService orderService;
    /**
     * 选座页面数据初始化
     * @return
     */
    @RequestMapping("/initSelectSeat")
    public Map initSelectSeat(@RequestBody HallMovie hallMovie){
        //影片场次id
        Integer id = hallMovie.getHallMovieId();
        //场次信息
        HallMovie thisHallMovie = hallMovieService.selectById(id);
        //场次开始时间
        String time = DateUtil.DateFormat(thisHallMovie.getStartTime());
        //影厅id
        Integer hallId = thisHallMovie.getHallId();
        //影厅信息
        Hall hall = hallService.selectById(hallId);
        //影厅名称
        String hallName = hall.getHallName()+hallTypeService.selectById(hall.getHallType()).getHtName();
        //电影id
        Integer movieId = thisHallMovie.getMovieId();
        //影厅不是座位地方
        List<Seat> seats = seatService.getNonSeat(hallId);
        //已被选择地方
        List<Seat> selectedSeat = seatService.getSelectedSeat(id);
        Map map = new HashMap();

        map.put("seatRow",hall.getHallY());
        map.put("seatCol",hall.getHallX());
        map.put("startTime",time);
        map.put("hallName",hallName);
        map.put("movieName",movieDetailsService.selectByPrimaryKey(movieId).getMovieName());
        map.put("nonSeatPlace",seats);
        map.put("selectedSeat",selectedSeat);
        map.put("seatPrice",thisHallMovie.getFareMoney());
        return map;
    }

    /**
     * 选座购票
     * @param
     * @return
     */
    @RequestMapping("/buyTicket")
    public String buyTicket(@RequestBody TicketsVo tickets, HttpSession session){
        HallMovie hallMovie = hallMovieService.selectById(tickets.getHallMovieId());
        Order order = new Order();

        String orderNo = UUID.randomUUID().toString();
        order.setOrderNo(orderNo);

        order.setMovieId(hallMovie.getMovieId());

        //影厅信息
        Integer hallId = hallMovie.getHallId();
        Hall hall = hallService.selectById(hallId);
        order.setCinemaId(hall.getCinemaId());
        order.setHallId(hallId);

        //消费金额
        order.setOrderUnitprice(new BigDecimal(hallMovie.getFareMoney()));
        Long money = hallMovie.getFareMoney()*tickets.getTickets().size();
        order.setOrderTotalDiscountsCash(new BigDecimal(money));
        order.setOrderTotalInitialCash(new BigDecimal(money));
        //优惠卷
        order.setCouponId(0);

        //session中用户信息
        User user = (User) session.getAttribute("user");
        order.setUserId(user.getUserId());

        //订单状态 未支付:1
        order.setOrderStatus(1);
        //票数
        order.setOrderCount(tickets.getTickets().size());

        order.setOrderTime(new Date());


        try {
            orderService.buyTickets(order);
        }catch (NullPointerException e){
            e.printStackTrace();
        }
        return null;
    }
}
