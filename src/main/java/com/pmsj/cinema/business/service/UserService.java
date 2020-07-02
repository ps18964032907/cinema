package com.pmsj.cinema.business.service;

import com.pmsj.cinema.common.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/1 11:08
 **/

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;

    public Double getUserAllMoney(int i) {
        return userMapper.getUserAllMoney(i);
    }


    public int getUserAllOrderCount(int i) {
        long a = userMapper.getUserAllOrderCount(i);

        return (int) a;
    }
}
