package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Brand;
import java.util.List;

public interface BrandMapper {
    int deleteByPrimaryKey(Integer brandId);

    int insert(Brand record);

    Brand selectByPrimaryKey(Integer brandId);

    List<Brand> selectAll();

    int updateByPrimaryKey(Brand record);
}