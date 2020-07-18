package com.pmsj.cinema.business.controller;

/*
 * @author 潘升
 * @description //TODO 个人中心$
 * date 2020/7/1 11:02
 **/

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.business.service.OrderService;
import com.pmsj.cinema.business.service.UserService;
import com.pmsj.cinema.common.entity.User;
import com.pmsj.cinema.common.mapper.UserMapper;
import com.pmsj.cinema.common.vo.OrderVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;


@RestController
@RequestMapping("PersonalCentreController")
public class PersonalCentreController {

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserService userService;

    @Autowired
    OrderService oderService;


    @RequestMapping("getUser")
    public User getUser(HttpSession session) {
        User user = (User) session.getAttribute("user");
        return userMapper.selectByPrimaryKey(user.getUserId());
    }


    @RequestMapping("getUserAllMoney")
    public double getUserAllMoney(HttpSession session) {

        User user = (User) session.getAttribute("user");
        Double userAllMoney = userService.getUserAllMoney(user.getUserId());
        return userAllMoney;
    }

    @RequestMapping("getAllOrderByUser")
    public PageInfo<OrderVo> getAllOrderByUser(Integer currentPage, Integer pageSize, HttpSession session) {

        if (currentPage == null) {
            currentPage = 1;
        }
        pageSize = 5;
        User user = (User) session.getAttribute("user");
        return oderService.getAllOrderByUser(user.getUserId(), currentPage, pageSize);
    }


    @RequestMapping("getUserAllOrderCount")
    public int getUserAllOrderCount(HttpSession session) {

        User user = (User) session.getAttribute("user");
        return userService.getUserAllOrderCount(user.getUserId());
    }
}
