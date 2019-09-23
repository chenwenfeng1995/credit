package com.credit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.credit.pojo.FirstApply;
import com.credit.pojo.Users;
import com.credit.service.IFirstApplyService;
import com.credit.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.MD5Utils;
import com.util.Replaceasstar;
import com.util.SMS;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private IFirstApplyService appService;

	
	//后台二审主页查询
	@RequestMapping("limittwice")
	public String limittiwce(@RequestParam(value="cp",defaultValue="1",required=false)int cp,Model model,String mobile,String name) {
		PageHelper.startPage(cp,5);
		Map map=new HashMap();
		map.put("limit", "二审中");
		map.put("mobile", mobile);
		map.put("name", name);
		List<Users> userList =userService.checkbylimit(map);
		for (Users users : userList) {
			System.out.println(users.toString());
		}
		PageInfo<Users> pagemsg =new PageInfo<Users>(userList);
	    model.addAttribute("userList", userList);
	    model.addAttribute("pagemsg", pagemsg);
		return "twice";
	}
	//二审详情
	@RequestMapping("twiceDetail")
	public String twiceDetail(Model model,Integer userid) {
		System.out.println(userid);
		Users user=userService.checkallbyuserid(userid);
		System.out.println(user.toString());
		FirstApply apply=appService.checkallbyuserid(userid);
		System.out.println(apply.toString());
		String mobile= Replaceasstar.idMask(user.getMobile(), 3, 4);
		String idcard= Replaceasstar.idMask(user.getIdcard(), 3, 4);
		String bankcar=Replaceasstar.idMask(user.getBankcard(), 3, 4);
		user.setMobile(mobile);
		user.setBankcard(bankcar);
		user.setIdcard(idcard);
		System.out.println(user.toString());
		model.addAttribute("user", user);
		model.addAttribute("apply", apply);
		return "twice_detail";
	}
	//二审审核显示
	@RequestMapping("twiceAudit")
	public String twiceAudit(Model model,Integer userid) {
		System.out.println(userid);
		Users user=userService.checkallbyuserid(userid);
		System.out.println(user.toString());
		FirstApply apply=appService.checkallbyuserid(userid);
		String mobile= Replaceasstar.idMask(user.getMobile(), 3, 4);
		String idcard= Replaceasstar.idMask(user.getIdcard(), 3, 4);
		String bankcar=Replaceasstar.idMask(user.getBankcard(), 3, 4);
		user.setMobile(mobile);
		user.setBankcard(bankcar);
		user.setIdcard(idcard);
		System.out.println(user.toString());
		model.addAttribute("user", user);
		model.addAttribute("apply", apply);
		return "twice_audit";
	}
	//二审审核
	@RequestMapping("twicechange")
	public String twicechange(Integer userid,String limit) {
		System.out.println(userid+"aaaaaaaa"+limit);
		Map<String,Object> map =new HashMap<>();
		map.put("userid", userid);
		map.put("limit", limit);
		userService.updatelimit(map);
		return "forward:/user/limittwice";
	}
	
	
	
		//初次审核多条件查询及查询全部
		@RequestMapping(value="findall")
		public String findall(@RequestParam(required = false, defaultValue = "1", value = "cp") Integer cp,String clientName,String mobile,Model model) {
			//通过limit获取users集合
			Map<String, Object> map = new HashMap<String, Object>();
			System.out.println(clientName);
			System.out.println(mobile);
			map.put("clientName", clientName);
		
			map.put("mobile", mobile);
			
			PageHelper.startPage(cp, 3);
			/*List<Users> userList =userService.checkbylimit(map);
			List<FirstApply> surveylist=new ArrayList<FirstApply>();*/
			List<FirstApply> applist = appService.findallApply(map);
			for (FirstApply firstApply : applist) {
				System.out.println(firstApply);
			}
		/*	for (Users users : userList) {
				FirstApply f=appService.checkallbyuserid(users.getUserid());
				surveylist.add(f);	
			}*/
//			FirstApply firstApply =new FirstApply();
//			System.out.println("clientName:"+clientName);
//			System.out.println("mobile:"+mobile);
//			//判断申请人和电话号码是否为空
//			if(clientName=="") {
//				clientName=null;
//			}
//			if(mobile=="") {
//				mobile=null;
//			}
//			firstApply.setClientName(clientName);
//			firstApply.setMobile(mobile);
			//刚开始的页面的页码和设定的行数
//			PageHelper.startPage(cp, 1);
			
//			//多条件查询语句结果
//			List<FirstApply> applylist = appService.findallApply(firstApply);
//			/*for (FirstApply firstApply1 : applylist) {
//				System.out.println(firstApply1.toString());
//			}*/
//			
//			//PageInfo是插件的
			PageInfo<FirstApply> pagemsg = new PageInfo<FirstApply>(applist);
			model.addAttribute("applylist", applist);
			model.addAttribute("pagemsg", pagemsg);
			return "suc";
		}
		
		
		//初审通过
		@RequestMapping(value="udatelimit")
		public String updatelimit(Integer userid) {
			Map<String,Object> map =new HashMap<>();
			map.put("userid", userid);
			map.put("limit", "一审通过");
			userService.updatelimit(map);
			return "redirect:/user/findall";
		}
		//初审不通过
		@RequestMapping(value="udatelimit2")
		public String updatelimit2(Integer userid) {
			Map<String,Object> map =new HashMap<>();
			map.put("userid", userid);
			map.put("limit", "一审不通过");
			userService.updatelimit(map);
			return "forward:/user/findall";
		}
		
		//借款信息:三审通过后
		@RequestMapping("loan")
		public String loan(@RequestParam(value="cp",defaultValue="1",required=false)int cp,Model model,String mobile,String name) {
			PageHelper.startPage(cp,5);
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("limit", "三审通过");
			map.put("mobile", mobile);
			map.put("name", name);
			List<Users> userList =userService.checkbylimit(map);
			for (Users users : userList) {
				System.out.println(users.toString());
			}
			PageInfo<Users> pagemsg =new PageInfo<Users>(userList);
		    model.addAttribute("userList", userList);
		    model.addAttribute("pagemsg", pagemsg);
			return "loan_information";
		}
		
		
		
}
