package com.credit.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.credit.pojo.Users;
import com.credit.service.IProvinceService;
import com.credit.service.UserService;
import com.util.Replaceasstar;
import com.util.bankcardApi;
import com.util.realNameApi;

@Controller
@RequestMapping("UserdataController")
public class UserController {
	
	@Autowired
	private  UserService userService;
	@Autowired
	private IProvinceService provinceService; 

	//查询银行卡
	@ResponseBody
	@RequestMapping("CheckBandcard")
	public Object CheckBank(String cardNo) {
		String CardDetail=bankcardApi.getCardDetail(cardNo);
		Map mapTypes = JSON.parseObject(CardDetail);
		System.out.println(mapTypes.get("validated"));
		String validated =mapTypes.get("validated").toString();
		return validated;
	}
	
	//实名验证
	@ResponseBody
	@RequestMapping("Checkcardname")
	public String Checkcardname(String IDcardNo,String name) throws Exception {
		System.out.println(IDcardNo+"+++++++++"+name);
		Object staticRealname =realNameApi.getCheckRealname(IDcardNo, name);
		System.out.println(staticRealname);
		return staticRealname.toString();
		
	}
	
	//用户填写完整信息
	@RequestMapping("insertdata")
	public String insertdata(Model model,HttpSession session,Users user,String province,String city) {
		Users users = (Users) session.getAttribute("users");
		String cp=provinceService.findallbypname(province).getProvince()+"-"+provinceService.findallbycname(city).getCity();
		user.setCity(cp);
		user.setUserid(users.getUserid());
		user.setLimit("二审中");;
		Boolean b=userService.insertusers(user);
		System.out.println(b);
		if(b) {
			return "redirect:/UserdataController/checkall";
		}
		return "";
	}
	
	@RequestMapping("checkall")
	public String checkall(Model model,HttpSession session) {
		System.out.println("进方法了......");
		Users users = (Users) session.getAttribute("users");
		Users user=userService.checkall(users.getUserid());
		String idCard =  Replaceasstar.idMask(user.getIdcard(),3,4);
		String bankCard = Replaceasstar.idMask(user.getBankcard(),4,4);
		user.setIdcard(idCard);
		user.setBankcard(bankCard);
		model.addAttribute("user", user);
		System.out.println(user.toString());
		return "userdata_success";
		
		
	}
}
