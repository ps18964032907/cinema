package com.pmsj.cinema.business.controller;

/*
 * @author 潘升
 * @description //TODO 个人中心$
 * date 2020/7/1 11:02
 **/

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.business.service.OderService;
import com.pmsj.cinema.business.service.UserService;
import com.pmsj.cinema.common.entity.User;
import com.pmsj.cinema.common.mapper.UserMapper;
import com.pmsj.cinema.common.vo.OrderVo;
import org.assertj.core.error.ShouldBeBeforeYear;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("PersonalCentreController")
public class PersonalCentreController {

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserService userService;

    @Autowired
    OderService oderService;


    @RequestMapping("getUser")
    public User getUser() {
        User user = userMapper.selectByPrimaryKey(1);
        return user;
    }


    @RequestMapping("getUserAllMoney")
    public double getUserAllMoney() {
        Double userAllMoney = userService.getUserAllMoney(1);
        return userAllMoney;
    }

    @RequestMapping("getAllOrderByUser")
    public PageInfo<OrderVo> getAllOrderByUser(Integer currentPage, Integer pageSize) {

        if (currentPage == null) {
            currentPage = 1;
        }

        pageSize = 5;
        return oderService.getAllOrderByUser(1, currentPage, pageSize);
    }


    @RequestMapping("getUserAllOrderCount")
    public int getUserAllOrderCount() {


        return userService.getUserAllOrderCount(1);
    }
}
