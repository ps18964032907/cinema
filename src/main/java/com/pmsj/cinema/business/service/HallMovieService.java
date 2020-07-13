package com.pmsj.cinema.business.service;

import com.pmsj.cinema.business.exception.NullParametersException;
import com.pmsj.cinema.common.entity.*;
import com.pmsj.cinema.common.mapper.HallMovieMapper;
import com.pmsj.cinema.common.vo.TicketVo;
import com.pmsj.cinema.common.vo.TicketsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author mhd
 * @className HallMovieService
 * @description TODO
 * @create 2020/7/7
 * @since 1.0.0
 */
@Service
public class HallMovieService {
    @Autowired(required = false)
    HallMovieMapper hallMoviemapper;
    @Autowired
    SeatService seatService;
    @Autowired
    OrderService orderService;
    @Autowired
    HallService hallService;

    public HallMovie selectById(Integer id) {
        if (id == null) {
            throw new NullParametersException("HallMovieId is null");
        }
        return hallMoviemapper.selectByPrimaryKey(id);
    }

    public synchronized int add(HallMovie hallMovie) {
        int hallMoviesByTime = hallMoviemapper.getHallMoviesByTime(hallMovie.getHallId(), hallMovie.getStartTime(), hallMovie.getEndTime());
        if (hallMoviesByTime == 0) {
            hallMoviemapper.insert(hallMovie);
            return 0;
        } else {
            return 1;
        }
    }

    /**
     * 添加订单
     *
     * @param tickets
     * @param session
     */
    private void addOrder(TicketsVo tickets, HttpSession session) {
        HallMovie hallMovie = this.selectById(tickets.getHallMovieId());
        Order order = new Order();

        String orderNo = UUID.randomUUID().toString().replace("-", "");
        order.setOrderNo(orderNo);


        //场次信息
        order.setHallMovieId(tickets.getHallMovieId());

        //消费金额
        order.setOrderUnitprice(new BigDecimal(hallMovie.getFareMoney()));
        double money = hallMovie.getFareMoney() * tickets.getTickets().size();
        order.setOrderTotalDiscountsCash(new BigDecimal(money));
        order.setOrderTotalInitialCash(new BigDecimal(money));
        //优惠卷
        order.setCouponId(0);

        //session中用户信息
        User user = (User) session.getAttribute("user");
        if (user == null) {
            System.out.println("USER IS NULL");
        } else {
            order.setUserId(user.getUserId());
        }

        //订单状态 未支付:1
        order.setOrderStatus(1);
        //票数
        order.setOrderCount(tickets.getTickets().size());
        //订单创建时间
        order.setOrderTime(new Date());
        //添加订单
        orderService.buyTickets(order);
        //将订单编号存储到session中
        session.setAttribute("orderNo", orderNo);
    }

    /**
     * 添加座位
     *
     * @param tickets
     */
    private void addSeat(TicketsVo tickets) {
        Integer hallMovieId = tickets.getHallMovieId();
        List<TicketVo> list = tickets.getTickets();
        for (TicketVo ticket : list) {
            Seat seat = new Seat();
            seat.setHallMovieId(hallMovieId);
            //设置行
            seat.setSeatX(ticket.getCol());
            //设置列
            seat.setSeatY(ticket.getRow());
            //设置状态
            seat.setSeatTpye(2);
            seat.setSeatName(ticket.getSeatInfo());
            seatService.isAvailable(ticket);
            seatService.addSeat(seat);
        }
    }

    @Transactional
    public void buyTicket(TicketsVo tickets, HttpSession session) {
        addSeat(tickets);
        addOrder(tickets, session);
    }


}
