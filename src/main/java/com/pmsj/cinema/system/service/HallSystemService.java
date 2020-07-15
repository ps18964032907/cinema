package com.pmsj.cinema.system.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Hall;
import com.pmsj.cinema.common.entity.Seat;
import com.pmsj.cinema.common.mapper.HallMapper;
import com.pmsj.cinema.common.vo.HallBlankVo;
import com.pmsj.cinema.common.vo.HallVo;
import com.pmsj.cinema.common.vo.TicketVo;
import com.pmsj.cinema.system.exception.DataExistException;
import com.pmsj.cinema.system.exception.NullParametersException;
import com.pmsj.cinema.system.exception.PageInfoErrorException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author mhd
 * @className BrandService
 * @description TODO
 * @create 2020/7/1
 * @since 1.0.0
 */
@Service
public class HallSystemService {
    @Autowired(required = false)
    HallMapper hallMapper;
    @Autowired
    SeatSystemService seatService;
    /**
     * 分页查询所有影厅
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageInfo<HallVo> getAllHalls(Integer pageNum, Integer pageSize, Hall searchParams){
        if (pageSize==null||pageSize<=0){
            throw new PageInfoErrorException("PageSize is illegal");
        }
        if(pageNum==null||pageNum<=0){
            pageNum=1;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<HallVo> hallVos = hallMapper.getAllHall(searchParams);
        PageInfo<HallVo> pageInfo = new PageInfo<>(hallVos);
        return pageInfo;
    }

    /**
     * 查询单条数据
     * @return
     */
    public HallVo getHallById(Integer hallId){
        if(hallId==null){
                throw new NullParametersException("HallId is null");
        }
        return hallMapper.getHallByHallId(hallId);
    }

    /**
     * 添加影厅
     * @param hall
     * @return
     */
    @Transactional
    public void addHall(HallBlankVo hallBlankVo){
        if (hallBlankVo ==null) {
            throw new NullParametersException("hallOrBlank is null");
        }

        else {
            Hall hall = new Hall();
            hall.setHallName(hallBlankVo.getHallName());
            hall.setHallType(hallBlankVo.getHallType());
            hall.setHallX(hallBlankVo.getHallX());
            hall.setHallY(hallBlankVo.getHallY());
            hall.setCinemaId(hallBlankVo.getCinemaId());
            hallIsExist(hall);
            hall.setHallStatus(1);
            hallMapper.insert(hall);
            Integer hallid = hall.getHallId();
            for (TicketVo ticket : hallBlankVo.getTickets()) {
                Seat seat = new Seat();
                seat.setHallId(hallid);
                //设置行
                seat.setSeatX(ticket.getCol());
                //设置列
                seat.setSeatY(ticket.getRow());
                //设置状态
                seat.setSeatTpye(-1);

                seatService.isAvailable(ticket,hallid);
                seatService.addBlank(seat);
            }

        }
    }


    /**
     * 校验影厅是否存在
     * @param hall
     */
    private void hallIsExist(Hall hall){
        Hall existHall = hallMapper.isExist(hall.getHallName(),hall.getHallType(),hall.getCinemaId());
        if (existHall!=null){
            throw new DataExistException("Hall is existed");
        }
    }



}
