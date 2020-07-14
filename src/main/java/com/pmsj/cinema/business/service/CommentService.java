package com.pmsj.cinema.business.service;

import com.pmsj.cinema.common.entity.Comment;
import com.pmsj.cinema.common.mapper.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @Author sjh
 * @creat 2020/7/8 19:30
 */
@Service
@Transactional
public class CommentService {
    @Autowired
    CommentMapper commentMapper;
    @Transactional
    public int insert( Integer userId, Integer userSocre,
                      Date commentCreateTime,Integer movieId,
                      String userComment,Integer likeCount){
        return commentMapper.insert(userId,userSocre,commentCreateTime,movieId,userComment,likeCount);
    }
    @Transactional
    public int updateLikeCount(Integer likeCount,Integer commentId){
        return commentMapper.updateLikeCount(likeCount,commentId);
    }

    public List<Comment> selectAllByMovie(Integer movieId){
        return commentMapper.selectAllByMovie(movieId);
    }
}
