package com.pmsj.cinema.system.service;

import com.pmsj.cinema.common.entity.Cast;
import com.pmsj.cinema.common.mapper.CastMapper;
import com.pmsj.cinema.common.vo.AutocompleteVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/7 13:54
 **/
@Service
public class CastService {
    @Autowired
    CastMapper castMapper;

    public AutocompleteVo<Cast> getAllCast() {
        List<Cast> castList = castMapper.selectAll();

        AutocompleteVo<Cast> castAutocompleteVo = new AutocompleteVo<>();
        castAutocompleteVo.setData(castList);
        castAutocompleteVo.setCode(200);
        castAutocompleteVo.setMsg("zzzz");
        return castAutocompleteVo;
    }
}
