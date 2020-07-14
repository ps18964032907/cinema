package com.pmsj.cinema.system.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Hall;
import com.pmsj.cinema.common.mapper.HallMapper;
import com.pmsj.cinema.common.vo.HallVo;
import com.pmsj.cinema.system.exception.DataExistException;
import com.pmsj.cinema.system.exception.NullParametersException;
import com.pmsj.cinema.system.exception.PageInfoErrorException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public int addHall(Hall hall){
        if (hall ==null) {
            throw new NullParametersException("Brand is null");
        }

        else {
            hallIsExist(hall);
            return hallMapper.insert(hall);
        }
    }


    /**
     * 校验影厅是否存在
     * @param hall
     */
    private void hallIsExist(Hall hall){
        Hall existHall = hallMapper.isExist(hall.getHallName(),hall.getHallType(),hall.getCinemaId());
        if (existHall==null){
            throw new DataExistException("Hall is existed");
        }
    }

}
