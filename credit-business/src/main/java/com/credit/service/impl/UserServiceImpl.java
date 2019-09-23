package com.credit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.UserDao;
import com.credit.pojo.Users;
import com.credit.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserDao userDao;
	@Override
	public Boolean insertusers(Users user) {
		// TODO Auto-generated method stub
		return userDao.insertusers(user);
	}
	@Override
	public Users checkall(Integer id) {
		// TODO Auto-generated method stub
		return userDao.checkall(id);
	}
	@Override
	public Boolean updatelimit(Users user) {
		// TODO Auto-generated method stub
		return userDao.updatelimit(user);
	}


}
