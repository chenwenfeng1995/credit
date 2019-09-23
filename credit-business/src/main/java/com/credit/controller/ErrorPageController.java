package com.credit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ErrorPageController implements ErrorController {
/**
 * 专门对404,500错误跳转的页面，401,403错误没写跳转的页面
 * */
	@Override
	public String getErrorPath() {
		// TODO Auto-generated method stub
		return "/error";
	}
	@RequestMapping("/error")
    public String handleError(HttpServletRequest request){
        //获取statusCode:401,404,500
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
       
        if(statusCode == 401){
            return "/401";
        }else if(statusCode == 404){
            return "/404page/404";
        }else if(statusCode == 403){
            return "/403";
        }else{
            return "/500page/500";
        }

    }


}
