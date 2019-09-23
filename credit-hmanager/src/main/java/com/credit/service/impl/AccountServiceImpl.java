package com.credit.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.AccountDao;
import com.credit.pojo.Account;
import com.credit.service.AccountService;
@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountDao accountDao;
	
	@Override
	public Account findMoneyByuserid(Integer userid) {
		// TODO Auto-generated method stub
		System.out.println("service:"+accountDao.findMoneyByuserid(userid));
		return accountDao.findMoneyByuserid(userid);
	}

	@Override
	public boolean updateMonetyByuserid(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return accountDao.updateMonetyByuserid(map);
	}

}
