package com.pmsj.cinema.system.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.common.entity.Brand;
import com.pmsj.cinema.common.mapper.BrandMapper;
import com.pmsj.cinema.system.exception.NullParametersException;
import com.pmsj.cinema.system.exception.PageInfoErrorException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author mhd
 * @className BrandService
 * @description TODO
 * @create 2020/7/1
 * @since 1.0.0
 */
@Service
public class BrandService {
    @Autowired(required = false)
    BrandMapper brandMapper;

    /**
     * 分页查询所有影院品牌
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageInfo<Brand> getAllBrands(Integer pageNum, Integer pageSize, Map searchParams){
        if (pageSize==null||pageSize<=0){
            throw new PageInfoErrorException("PageSize is illegal");
        }
        if(pageNum==null||pageNum<=0){
            pageNum=1;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Brand> brands = brandMapper.selectAll(searchParams);
        PageInfo<Brand> pageInfo = new PageInfo<>(brands);
        return pageInfo;
    }

    /**
     * 添加品牌
     * @param brand
     * @return
     */
    public int addBrand(Brand brand){
        if (brand ==null||brand.getBrandName()==null){
            throw new NullParametersException("Brand is null");
        }else {
            return brandMapper.insert(brand);
        }
    }


}
