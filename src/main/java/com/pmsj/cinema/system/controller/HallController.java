package com.pmsj.cinema.system.controller;

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Cinema;
import com.pmsj.cinema.common.entity.Hall;
import com.pmsj.cinema.common.entity.HallTpye;
import com.pmsj.cinema.common.vo.HallBlankVo;
import com.pmsj.cinema.common.vo.HallVo;
import com.pmsj.cinema.system.exception.NullParametersException;
import com.pmsj.cinema.system.exception.PageInfoErrorException;
import com.pmsj.cinema.system.service.CinemaService;
import com.pmsj.cinema.system.service.HallSystemService;
import com.pmsj.cinema.system.service.HallSystemTypeService;
import com.pmsj.cinema.system.util.ReturnUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author mhd
 * @className BrandController
 * @description TODO
 * @create 2020/7/1
 * @since 1.0.0
 */
@Controller
@RequestMapping("/hall")
public class HallController {
    @Autowired
    HallSystemService hallService;
    @Autowired
    HallSystemTypeService hallTypeService;
    @Autowired
    CinemaService cinemaService;

    /**
     * 查询所有影厅
     * @param page
     * @param limit
     * @param hall
     * @return
     */
    @RequestMapping("/getAll")
    @ResponseBody
    public ReturnUtil getAllHalls(Integer page, Integer limit, Hall hall) {
        try {
            PageInfo<HallVo> pageInfo = hallService.getAllHalls(page, limit, hall);
            ReturnUtil returnUtil = new ReturnUtil(0, "success", pageInfo.getTotal(), pageInfo.getList());
            return returnUtil;
        } catch (PageInfoErrorException e) {
            e.printStackTrace();
            return new ReturnUtil().failure();
        }
    }

    /**
     * 查询所有影厅类型
     * @return
     */
    @RequestMapping("/getAllHallType")
    @ResponseBody
    public List<HallTpye> getAllHallType() {
        return  hallTypeService.getAllHallType();
    }

    /**
     * 查询所有影院
     * @return
     */
    @RequestMapping("/getAllCinema")
    @ResponseBody
    public List<Cinema> getAllCinema() {
        return  cinemaService.getAllCinema();
    }


    @RequestMapping("/initParams")
    @ResponseBody
    public Map initParams() {
        Map map = new HashMap();
        map.put("cinema",cinemaService.getAllCinema());
        map.put("hallType",hallTypeService.getAllHallType());
        return  map;
    }

    @RequestMapping("/addHall")
    @ResponseBody
    public void addHall(@RequestBody HallBlankVo hallBlankVo) {
        hallService.addHall(hallBlankVo);
    }

    /**
     * 批量删除
     * @param list
     * @return
     */
    @RequestMapping("/deleteBatches")
    @ResponseBody
    public String deleteBatches(@RequestBody List<Hall> list) {
        try {
            hallService.deleteBatches(list);
            return "SUCCESS";
        } catch (NullParametersException e) {
            e.printStackTrace();
            return "ERROR";
        }
    }

    /**
     * 删除
     * @param hallId
     * @return
     */
    @RequestMapping("/del")
    @ResponseBody
    public String del(@RequestBody Integer hallId) {
        try {
            hallService.deleteHall(hallId);
            return "SUCCESS";
        } catch (NullParametersException e) {
            e.printStackTrace();
            return "ERROR";
        }
    }

}
