package com.credit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.AccountDao;
import com.credit.service.AccountService;
@Service
public class AccountServiceImpl implements AccountService {

		@Autowired
		private AccountDao accountDao;
		
	//根据查询的钱和需要还款的钱做对比,判断是否能够支付
	@Override	
	public boolean checkMoney(Integer userid) {
		Double money = accountDao.FindMoneyByUserid(userid);
		if(money<0) {
			return false;
		}
		return true;
	}

}
