package com.credit.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.credit.pojo.Credit;
import com.credit.pojo.FirstApply;
import com.credit.pojo.Repayment;
import com.credit.pojo.Users;
import com.credit.service.FinalService;
import com.credit.service.IFirstApplyService;
import com.credit.service.RepayService;
import com.credit.service.UserService;

@Controller
@RequestMapping("/rc")
public class RepaymentController {

	@Autowired
	private RepayService repayService;
	@Autowired
	private FinalService finalService;
	@Autowired
	private UserService userService;
	@Autowired
	private IFirstApplyService fristapplyservice;
	
	//借款详情
	@RequestMapping(value="findRepayById")
	public String FindRepayInfoById(Integer userid,Model model) {
		Repayment repay = repayService.FindRepayById(userid);
		Credit credit = finalService.Queryfinal(userid);
		model.addAttribute("repay", repay);
		model.addAttribute("credit", credit);
		return "loan_repayinfo";
	}
	
	
	//借款个人信息
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
		
		
		return "loan_details";
	}
}
