package com.credit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.UserDao;
import com.credit.pojo.Users;
import com.credit.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserDao userDao;
	
	//登录
	@Override
	public Users login(String mobile) {
		return userDao.login(mobile);
	}
	
	//注册
	@Override
	public Boolean register(Users user) {
		return userDao.register(user);
	}

	@Override
	public List<Users> checkbylimit(String limit) {
		// TODO Auto-generated method stub
		return userDao.checkbylimit(limit);
	}

}
