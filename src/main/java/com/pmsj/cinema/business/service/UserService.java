package com.pmsj.cinema.business.service;

import com.pmsj.cinema.common.entity.User;
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
    public User accountExist(String account) {
       return userMapper.accountExist(account);
    }
    public void register(String userAccount, String password, String email, String phone) {
        userMapper.register(userAccount, password,email, phone);
    }

    public User accountLogin(String account, String password) {
        return userMapper.accountLogin(account,password);
    }

    public User emailLogin(String email) {
        return userMapper.emailLogin(email);
    }
}
