package com.pmsj.cinema.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/1 10:15
 **/
@Controller
public class a {

    @RequestMapping("aaa")
    public String aaa() {
        return "jifen/index";
    }
}
