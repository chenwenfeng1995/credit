package com.credit.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.credit.pojo.Credit;
import com.credit.pojo.FirstApply;
import com.credit.pojo.Users;
import com.credit.service.FinalService;
import com.credit.service.IFirstApplyService;
import com.credit.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("final")
public class FinalController {
	
	@Autowired
	private FinalService finalService;
	@Autowired
	private UserService userService;
	@Autowired
	private IFirstApplyService fristapplyservice;
	
	
	
	
	@RequestMapping("Querycredit")
	public String QueryFinal(@RequestParam(value="pageNo",defaultValue="1")Integer pageNo,Model Model,HttpServletRequest request) {
		String realname = request.getParameter("realname");
		String mobile = request.getParameter("mobile");
		System.out.println(realname);
		
		System.out.println(mobile);
		
		PageHelper.startPage(pageNo, 3);
		Map<String, Object>map=new HashMap<String, Object>();
		map.put("real", realname);
		map.put("ph", mobile);
		List<Credit> creditList=finalService.QueryLike(map);
		for (Credit credit : creditList) {
			System.out.println(credit.toString());
		}
		
		/*for (int i = 0; i < list.size(); i++) {
			Credit credit = list.get(i);
			System.out.println("申请人："+credit.getRealname()+"申请金额："+credit.getBorrowmoney());
		}*/
		
		
		
		
				
		//开始页数与每页多少条
		/*List<Credit> queryfinal = finalService.Queryfinal();*/
		PageInfo<Credit> pageInfo=new PageInfo<Credit>(creditList);
		Model.addAttribute("pageInfo", pageInfo);
		return "final";
	}
	
	
	
	@RequestMapping("finaldetails")
	public String finaldetails(Integer userid,Model model) {
		System.out.println(userid);
		FirstApply Apply= fristapplyservice.checkallbyuserid(userid);	
		Users user = userService.queryByidUsers(userid);
		Credit Final = finalService.Queryfinal(userid);
		model.addAttribute("Apply", Apply);
		model.addAttribute("user", user);
		model.addAttribute("Final", Final);
		
		Credit queryimgpath = finalService.Queryimgpath(userid);
		System.out.println("queryimgpath"+queryimgpath);
		String img=queryimgpath.getUpload();
		
		String [] splitStrings=img.split(",");
		for (String string : splitStrings) {
			System.out.println(string);
		}
		System.out.println("---------------------------");
		List<String> list=Arrays.asList(splitStrings);		
		model.addAttribute("list", list);
		
		
		return "finaldetails";
	}
	
	//后台三审成功
	@RequestMapping("changetruefianl")
	public String changetruefianl(Model model,Integer userid,String limit) {
		System.out.println(limit);
		if (limit.equals("三审通过")) {
			Users users =new Users();
			users.setUserid(userid);
			users.setLimit(limit);
			boolean updatefinal = userService.updatefinal(users);
		}else if (limit.equals("三审不通过")) {
			Users users =new Users();
			users.setUserid(userid);
			users.setLimit(limit);
			boolean updatefinal = userService.updatefinal(users);
		} 
		return "forward:/final/Querycredit";
	}	
	
}
