package com.pmsj.cinema.business.controller;

import com.pmsj.cinema.business.service.UserService;
import com.pmsj.cinema.business.util.EmailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

    @RequestMapping("/getCode")
    public void getCode(HttpServletRequest request, HttpServletResponse response) {
        String email = request.getParameter("email");
        code = EmailUtil.sendMail(email);
    }

    @RequestMapping("/register")
    public String register(HttpServletRequest request, String verifycode, String userAccount, String password1, String email, String phone) {
        int vcode = Integer.parseInt(verifycode);
        if (vcode == code) {
            userService.register(userAccount,password1,email,phone);
            return "redirect:/business/HTML/index.html";
        }
        return "redirect:/business/HTML/register.html";
    }
}
