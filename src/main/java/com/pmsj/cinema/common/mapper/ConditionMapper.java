package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Condition;
import java.util.List;

public interface ConditionMapper {
    int insert(Condition record);

    List<Condition> selectAll();
}