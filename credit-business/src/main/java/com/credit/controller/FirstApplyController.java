package com.credit.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.credit.pojo.FirstApply;
import com.credit.pojo.Users;
import com.credit.service.UserService;
import com.credit.service.impl.FirstApplyService;
import com.util.SMS;


@Controller
public class FirstApplyController {
	@Autowired
	private FirstApplyService firstApplyService;
	@Autowired
	private UserService userService;
	@RequestMapping("shenqing")
	public String shenqing() {
		//一个跳转第一次申请的页面，就是那个问有没有公积金房贷的问卷
		return "shenqing";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="save",method=RequestMethod.POST)
	public String save(HttpServletRequest request,FirstApply firstApply) {
		System.out.println(firstApply.toString());
		/**
		 * 三个if判断，第一个判断前台发送来的验证码是否为空和空字符串
		 * 第二个，与存在session中的验证码比较
		 * 插入数据库，是否插入成功，三个成功才返回suceess
		 * 
		 * */	
		if(firstApply.getVerifyOtp()!=null&&!firstApply.getVerifyOtp().equals("")) {
			HttpSession session=request.getSession();
			Users users = (Users)session.getAttribute("users");
			System.out.println("save中的userid"+users.getUserid());
			String cods=(String) session.getAttribute("verifyCode");
			session.removeAttribute("verifyCode");
			if(firstApply.getVerifyOtp().equals(cods)) {
				Integer aa=firstApplyService.getMaxId();
				aa=(aa==null?0:aa);
				firstApply.setSid(aa+1);
				Users user=new Users();
				user.setUserid(users.getUserid());
				firstApply.setUserid(users.getUserid());
				boolean flag=firstApplyService.insertApply(firstApply);
				user.setLimit("一审中");
				userService.updatelimit(user);
				if(flag) {
					return "success";
				}
				
			}
		}	
		return "fail";
	}
	@ResponseBody
	@RequestMapping(value="sendOpt",method=RequestMethod.POST)
	public String sendOpt(HttpServletRequest request,String mobile) {
		Boolean flag =SMS.getCode(request, mobile);
		if(flag) {
			return "success";
		}else {
			return "fail";
		}
	}
	
//	@RequestMapping("lijishenqing")
//    public String lijishenqing(HttpSession session) {
//		Users users = (Users) session.getAttribute("users");
//		System.out.println(users.toString());
//		Users user=userService.checkall(users.getUserid());
//		String limit=user.getLimit();
//		System.out.println(limit);
//		if(limit.equals("一审通过")||limit.equals("二审不通过")) {
//			return "forward:/provinces/province";
//		}else if(limit.equals("二审通过")||limit.equals("三审不通过")) {
//			return "creditdate";
//		}else if(limit.equals("二审中")){
//			return "userdata_success";
//		}else if(limit.equals("三审中")){
//			return "waitfors";
//		}else{
//			return "shenqing";
//		}
//    }
	
	@RequestMapping("lijishenqing")
    public String lijishenqing(HttpSession session) {
		Users users = (Users) session.getAttribute("users");
		System.out.println(users.toString());
		Users user=userService.checkall(users.getUserid());
		String limit=user.getLimit();
		System.out.println(limit);
		if("一审通过".equals(limit)||"二审不通过".equals(limit)) {
			return "forward:/provinces/province";
		}else if("二审通过".equals(limit)||"三审不通过".equals(limit)) {
			return "creditdate";
		}else if("二审中".equals(limit)){
			return "userdata_success";
		}else if("三审中".equals(limit)){
			return "waitfors";
		}else{
			return "shenqing";
		}
    }
}
