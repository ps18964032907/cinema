package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Comment;

import java.util.List;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer comment);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer comment);

    List<Comment> selectAll();

    int updateByPrimaryKey(Comment record);
}