package com.pmsj.cinema.system.controller;

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Brand;
import com.pmsj.cinema.system.exception.NullParametersException;
import com.pmsj.cinema.system.exception.PageInfoErrorException;
import com.pmsj.cinema.system.service.BrandService;
import com.pmsj.cinema.system.util.ReturnUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author mhd
 * @className BrandController
 * @description TODO
 * @create 2020/7/1
 * @since 1.0.0
 */
@Controller
@RequestMapping("/brand")
public class BrandController {
    @Autowired
    BrandService brandService;

    @RequestMapping("/getAll")
    @ResponseBody
    public ReturnUtil getAllBrands(Integer page, Integer limit) {
        try {
            PageInfo<Brand> pageInfo = brandService.getAllBrands(page, limit, null);
            ReturnUtil returnUtil = new ReturnUtil(0, "success", pageInfo.getTotal(), pageInfo.getList());
            return returnUtil;
        } catch (PageInfoErrorException e) {
            e.printStackTrace();
            return new ReturnUtil().failure();
        }
    }


    @RequestMapping("/add")
    @ResponseBody
    public String addBrand(@RequestBody Brand brand) {
        try {
            brandService.addBrand(brand);
            return "SUCCESS";
        } catch (NullParametersException e) {
            e.printStackTrace();
            return "ERROR";
        }

    }
}
