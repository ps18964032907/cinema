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
import javax.servlet.http.HttpSession;
import java.util.Map;
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

    @RequestMapping("/selectUser")
    @ResponseBody
    public User selectUser(String account, HttpSession session) {
        User user;
        if (account == null) {
            user = (User) session.getAttribute("user");
        } else {
            user = userService.selectUser(account);
        }
        return user;
    }

    @RequestMapping("/getCode")
    public void getCode(String email) {
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
    public String accountLogin(String account, String password, HttpSession session) {
        User user = userService.accountLogin(account, password);
        if (user != null) {
            session.setAttribute("user", user);
            return "redirect:/jifen/account.html";
            //return "redirect:/business/HTML/index.html";
        }
        return "redirect:/business/HTML/login.html";
    }

    @RequestMapping("/emailLogin")
    public String emailLogin(String email, String verifycode, HttpSession session) {
        int vcode = Integer.parseInt(verifycode);
        if (code == vcode) {
            User user = userService.emailLogin(email);
            if (user != null) {
                session.setAttribute("user", user);
                return "redirect:/business/HTML/index.html";
            }
        }
        return "redirect:/business/HTML/denglu.html";
    }

    @RequestMapping("/updatePass")
    @ResponseBody
    public String updatePass(String email, String verifycode, String password) {
        System.out.println(password);
        System.out.println(email);
        System.out.println(verifycode);
        int vcode = Integer.parseInt(verifycode);
        if (code == vcode) {
            Integer num = userService.updatePass(email, password);
            if (num > 0) {
                return "true";
            }
        }
        return "false";
    }

    @RequestMapping("/updateUser")
    @ResponseBody
    public String updateUser(User user) {
        System.out.println(user);
        Integer num = userService.updateUser(user);
        if (num > 0) {
            return "true";
        }
        return "false";
    }
}
