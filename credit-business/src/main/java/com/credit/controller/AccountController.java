package com.credit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.credit.service.AccountService;

@RestController
@RequestMapping("/ac")
public class AccountController {
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value="")
	public String FindMoneyById(Integer userid) {
		boolean flag = accountService.checkMoney(userid);
		if (flag) {
			return "redirect:";
		}
		return "";
	}
}
