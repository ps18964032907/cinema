package com.pmsj.cinema.business.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.mapper.OrderMapper;
import com.pmsj.cinema.common.vo.OrderVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/2 16:44
 **/
@Service
public class OderService {

    @Autowired
    OrderMapper orderMapper;

    public PageInfo<OrderVo> getAllOrderByUser(int i, int currentPage, int pageSize) {


        PageHelper.startPage(currentPage, pageSize);
        List<OrderVo> allOrderByUser = orderMapper.getAllOrderByUser(i);

        PageInfo<OrderVo> orderVoPageInfo = new PageInfo<>(allOrderByUser);
        return orderVoPageInfo;
    }
}
