package com.pmsj.cinema.business.controller;

import com.pmsj.cinema.business.service.UserService;
import com.pmsj.cinema.business.util.EmailUtil;
import com.pmsj.cinema.common.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * @author jiangshuai
 * @date 2020/7/1 0001 19:59
 */

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    Long code;

    @RequestMapping("/accountExist")
    @ResponseBody
    public String accountExist(String account) {
        User user = userService.accountExist(account);
        if (user == null) {
            return "true";
        } else {
            return "false";
        }
    }

    @RequestMapping("/getCode")
    public void getCode(HttpServletRequest request) {
        String email = request.getParameter("email");
        code = EmailUtil.sendMail(email);
    }

    @RequestMapping("/register")
    public String register(String verifycode, String userAccount, String password1, String email, String phone) {
        int vcode = Integer.parseInt(verifycode);
        if (vcode == code) {
            userService.register(userAccount, password1, email, phone);
            return "redirect:/business/HTML/login.html";
        }
        return "redirect:/business/HTML/register.html";
    }

    @RequestMapping("/accountLogin")
    public String accountLogin(String account, String password) {
        User user = userService.accountLogin(account, password);
        if (user == null) {
            return "redirect:/business/HTML/index.html";
        }
        return "redirect:/business/HTML/login.html";
    }

    @RequestMapping("/emailLogin")
    public String emailLogin(String email, String verifycode) {
        int vcode = Integer.parseInt(verifycode);
        System.out.println(vcode);
        if (code==vcode) {
            User user = userService.emailLogin(email);
            if (user == null) {
                return "redirect:/business/HTML/index.html";
            }
        }
        return "redirect:/business/HTML/denglu.html";
    }
}
