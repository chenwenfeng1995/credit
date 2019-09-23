package com.credit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.credit.pojo.Users;
import com.credit.service.UserService;
import com.util.MD5Utils;
import com.util.SMS;

import redis.clients.jedis.Jedis;

@RestController
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;

	// 用户登录
	@RequestMapping("/login")
	public Boolean auth(HttpSession session,String mobile, String password) {

		
		Users users = userService.login(mobile);
		if(users==null) {
			return false;
		}
		
		session.setAttribute("users", users);
		
		String pwd = users.getPassword();
		MD5Utils.getSaltverifyMD5(password, pwd);
		return true;
	}

	// 用户注册
	@RequestMapping("reg")
	public String register(Users user, String checkCode, HttpSession session) {

		user.setUsername(user.getMobile());
		/* verifyCode */
		// 从session中获取验证码
		String verifyCode = (String) session.getAttribute("verifyCode");
		session.removeAttribute("verifyCode");
		if (checkCode.equals(verifyCode)) {

			String password = MD5Utils.getSaltMD5(user.getPassword());
			user.setPassword(password);
			System.out.println("加密密码：" + password);
			System.out.println("user:" + user);
			boolean b = userService.register(user);
			if (b) {
				return "true";
			} else {
				return "false";
			}

		} else {
			return "false";
		}

	}

	// 获取验证码
	@RequestMapping("getCode")
	public Boolean getCode(HttpServletRequest request, String mobile) {
		// 生成验证码
		Boolean code = SMS.getCode(request, mobile);
		System.out.println(code);
		return code;
	}
	
	//后台二审主页查询
	@RequestMapping("limittwice")
	public String limittiwce() {
		List<Users> user =userService.checkbylimit("一审中");
		for (Users users : user) {
			System.out.println(users.toString());
		}
		return null;
		
	}
}
