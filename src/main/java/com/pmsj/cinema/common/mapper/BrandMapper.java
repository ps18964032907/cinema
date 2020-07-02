package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Brand;
import java.util.List;
import java.util.Map;

public interface BrandMapper {
    int deleteByPrimaryKey(Integer brandId);

    int insert(Brand record);

    Brand selectByPrimaryKey(Integer brandId);

    List<Brand> selectAll(Map searchParams);

    int updateByPrimaryKey(Brand record);
}