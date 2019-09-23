package com.credit.service;

import java.util.Map;

import com.credit.pojo.Account;

public interface AccountService {
	//通过userid查找账户现有金额
	public Account findMoneyByuserid(Integer userid);
	
	//通过userid修改账户金额:现有金额+借款金额
	public boolean updateMonetyByuserid(Map<String,Object> map);

}
