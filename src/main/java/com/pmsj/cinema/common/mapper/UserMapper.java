package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    User selectByPrimaryKey(Integer userId);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    Double getUserAllMoney(int i);

    long getUserAllOrderCount(int i);

    void register(@Param("userAccount") String userAccount, @Param("userPassword") String password, @Param("userEmail") String email, @Param("userPhone") String phone);
}