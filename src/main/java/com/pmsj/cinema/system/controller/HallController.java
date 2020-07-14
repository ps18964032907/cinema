package com.pmsj.cinema.system.controller;

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Cinema;
import com.pmsj.cinema.common.entity.Hall;
import com.pmsj.cinema.common.entity.HallTpye;
import com.pmsj.cinema.common.vo.HallVo;
import com.pmsj.cinema.system.exception.PageInfoErrorException;
import com.pmsj.cinema.system.service.CinemaService;
import com.pmsj.cinema.system.service.HallSystemService;
import com.pmsj.cinema.system.service.HallSystemTypeService;
import com.pmsj.cinema.system.util.ReturnUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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

    @RequestMapping("/getAllHallType")
    @ResponseBody
    public List<HallTpye> getAllHallType() {
        return  hallTypeService.getAllHallType();
    }

    @RequestMapping("/getAllCinema")
    @ResponseBody
    public List<Cinema> getAllCinema() {
        return  cinemaService.getAllCinema();
    }


}
