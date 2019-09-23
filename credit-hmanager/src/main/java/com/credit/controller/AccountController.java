package com.credit.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.credit.pojo.Account;
import com.credit.pojo.Credit;
import com.credit.service.AccountService;

@Controller
@RequestMapping("ac")
public class AccountController {

	@Autowired
	private AccountService accountService;

	@RequestMapping("updatemoney")
	public String FindMoneyById(Integer userid, Integer borrowmoney) {
		System.out.println("userid:" + userid);
		System.out.println("borrowmoney:" + borrowmoney);
		Account account = accountService.findMoneyByuserid(userid);
		System.out.println("money:" + account.getMoney());
		Integer newMoney = borrowmoney + account.getMoney();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userid", userid);
		map.put("newMoney", newMoney);
		accountService.updateMonetyByuserid(map);
		return "redirect:/user/loan";
	}
}
