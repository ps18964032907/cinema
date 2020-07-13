package com.pmsj.cinema.common.mapper;

import com.pmsj.cinema.common.entity.Comment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CommentMapper {
    int deleteByPrimaryKey(Integer commentId);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer commentId);

    List<Comment> selectAllByMovie(Integer movieId);

    int updateLikeCount(@Param(value = "likeCount") Integer likeCount, @Param(value = "commentId") Integer commentId);
}