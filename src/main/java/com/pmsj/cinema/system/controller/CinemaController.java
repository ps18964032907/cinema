package com.pmsj.cinema.system.controller;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/3 19:06
 **/

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Brand;
import com.pmsj.cinema.common.entity.Cinema;
import com.pmsj.cinema.common.entity.HallTpye;
import com.pmsj.cinema.common.entity.Result;
import com.pmsj.cinema.common.vo.CinemaVo;
import com.pmsj.cinema.system.service.CinemaService;
import com.pmsj.cinema.system.util.ReturnUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("cinema")
public class CinemaController {

    @Autowired
    CinemaService cinemaService;

    @RequestMapping("getAllCinameType")
    @ResponseBody
    public List<Brand> getAllCinameType() {
        return cinemaService.getAllCinameType();
    }


    @RequestMapping("addCinema")
    @ResponseBody
    public Result add(Cinema cinema) {
        int i = 0;
        try {
            cinemaService.addCinema(cinema);
        } catch (Exception e) {
            return new Result().error("添加失败", null);
        }
        return new Result().success("添加成功", null);
    }

    @RequestMapping("getAllCinema")
    @ResponseBody
    public ReturnUtil getAllCinema(Integer page, Integer limit, Cinema cinema) {
        if (page == null || page == 0) {
            page = 1;
        }
        if (limit == null || limit == 0) {
            limit = 5;
        }

        PageInfo<CinemaVo> allCinema = cinemaService.getAllCinema(page, limit, cinema);
        ReturnUtil returnUtil = new ReturnUtil(0, "success", allCinema.getTotal(), allCinema.getList());
        return returnUtil;
    }


    @RequestMapping("getCinemaById")
    public String getCinemaById(Integer cinemaId, Map map) {
        Cinema cinema = cinemaService.getCinemaById(cinemaId);
        map.put("cinema", cinema);
        return "system/page/table/editCinema.html";

    }

    @RequestMapping("getAllHallType")
    @ResponseBody
    public List<HallTpye> getAllHallType() {
        return cinemaService.getAllHallType();
    }


    @RequestMapping("getAllCinemaByAll")
    @ResponseBody
    public PageInfo<CinemaVo> getAllCinemaByAll(String brand, String hallType, String area, String province, String city, Integer page) {

        if (page == null || page == 0) {
            page = 3;
        }

        return cinemaService.getAllCinemaByAll(brand, hallType, area, province, city, page);

    }

    @RequestMapping("editCinema")
    @ResponseBody
    public Result editCinema(Cinema cinema) {
        try {
            cinemaService.editCinema(cinema);
        } catch (Exception e) {
            return new Result().error("修改失败", null);
        }
        return new Result().success("修改成功", null);
    }


    @RequestMapping("delCinema")
    @ResponseBody
    public Result delCinema(Integer cinemaId) {

        try {
            cinemaService.delCinemaById(cinemaId);
        } catch (Exception e) {
            return new Result().error("删除失败", null);
        }
        return new Result().success("删除成功", null);

    }
}



